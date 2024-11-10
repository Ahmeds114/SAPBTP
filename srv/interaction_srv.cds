using app.interactions from '../db/interactions';

@reuires: 'authenticated-user'
service CatalogService {
    entity Interactions_Header 
        as projection on interactions.Interactions_Header;

@requires: 'Admin'
@restrict: [{grant: 'READ', where: 'LANGU = ''EN'''}]
    entity Interactions_Items 
        as projection on interactions.Interactions_Items;
}