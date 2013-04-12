// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.nanuvem.lom.model;

import com.nanuvem.lom.model.Entity;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

privileged aspect Entity_Roo_Finder {
    
    public static TypedQuery<Entity> Entity.findEntitysByNameEquals(String name) {
        if (name == null || name.length() == 0) throw new IllegalArgumentException("The name argument is required");
        EntityManager em = Entity.entityManager();
        TypedQuery<Entity> q = em.createQuery("SELECT o FROM Entity AS o WHERE o.name = :name", Entity.class);
        q.setParameter("name", name);
        return q;
    }
    
    public static TypedQuery<Entity> Entity.findEntitysByNameLike(String name) {
        if (name == null || name.length() == 0) throw new IllegalArgumentException("The name argument is required");
        name = name.replace('*', '%');
        if (name.charAt(0) != '%') {
            name = "%" + name;
        }
        if (name.charAt(name.length() - 1) != '%') {
            name = name + "%";
        }
        EntityManager em = Entity.entityManager();
        TypedQuery<Entity> q = em.createQuery("SELECT o FROM Entity AS o WHERE LOWER(o.name) LIKE LOWER(:name)", Entity.class);
        q.setParameter("name", name);
        return q;
    }
    
    public static TypedQuery<Entity> Entity.findEntitysByNamespaceLike(String namespace) {
        if (namespace == null || namespace.length() == 0) throw new IllegalArgumentException("The namespace argument is required");
        namespace = namespace.replace('*', '%');
        if (namespace.charAt(0) != '%') {
            namespace = "%" + namespace;
        }
        if (namespace.charAt(namespace.length() - 1) != '%') {
            namespace = namespace + "%";
        }
        EntityManager em = Entity.entityManager();
        TypedQuery<Entity> q = em.createQuery("SELECT o FROM Entity AS o WHERE LOWER(o.namespace) LIKE LOWER(:namespace)", Entity.class);
        q.setParameter("namespace", namespace);
        return q;
    }
    
}
