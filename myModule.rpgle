**free
ctl-opt pgminfo(*DCLCASE) nomain;

dcl-ds DataStructure_t qualified template;
  item1 char(20);
  item2 char(10);
end-ds;


dcl-proc PcmlNestedExample export;
  dcl-pi *n;
    name char(20) const;
    struct likeds(DataStructure_t);
    structs likeds(DataStructure_t) dim(2);
    item char(20) dim(2) const;
    message char(30);
  end-pi;
       
  message = 'Hello ' + %trim(name);
end-proc;


dcl-proc PcmlFieldExample export;
  dcl-pi *n;
    name char(20) const;
    message char(30);
  end-pi;
       
  message = 'Hello ' + %trim(name);
end-proc;

dcl-proc PcmlDataStructExample export;
  dcl-pi *n;
    dataStructure likeds(DataStructure_t);
  end-pi;
       
  dataStructure.item1 = 'Hello';
  dataStructure.item2 = 'World';
end-proc;

dcl-proc PcmlListExample export;
  dcl-pi *n;
    item char(20) dim(2) const;
    message char(40);
  end-pi;
       
  message = %trim(item(1)) + ' ' + %trim(item(2));
end-proc;
     
     