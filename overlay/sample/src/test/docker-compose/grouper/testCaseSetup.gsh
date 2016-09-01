grouperSession = GrouperSession.startRootSession();

addRootStem("test", "test");

addStem("etc:attribute", "sample", "Sample attributes stem")
attributeStem = StemFinder.findByName(GrouperSession.staticGrouperSession(), "etc:attribute:sample", true);

# attrDef = attributeStem.addChildAttributeDef("conditionals", AttributeDefType.attr);
# attrDef.setAssignToGroup(true);
# attrDef.setValueType(AttributeDefValueType.integer);
# attrDef.store();

# attrDefName = attributeStem.addChildAttributeDefName(attrDef, "autoConfigureMembershipExpDate", "Conditional Membership Exp Date");
# attrDefName.setDescription("The group assigned to this definition will auto set the expiration date for members");
# attrDefName.store();

# group1 = addGroup("test", "Misagh", "Misagh's Test Group");
# group1.getAttributeDelegate().assignAttribute(attrDefName);
# attrDef.getPrivilegeDelegate().grantPriv(group1.toSubject(), AttributeDefPrivilege.ATTR_READ, false);
# group1.getAttributeDelegate().retrieveAssignments(attrDefName).iterator().next().getValueDelegate().assignValue("1");
