﻿using System;
using System.Collections.Generic;

#nullable disable

namespace SENAI_Hroads_API.Domains
{
    public partial class Personagen
    {
        public Personagen()
        {
            Classes = new HashSet<Classes>();
        }
        public int IdPersonagem { get; set; }
        public int? IdClasse { get; set; }
        public string Nome { get; set; }
        public int? MaxVida { get; set; }
        public int? MaxMana { get; set; }
        public string Atualizacao { get; set; }
        public DateTime? Criacao { get; set; }

        public virtual Classes IdClasseNavigation { get; set; }
        public HashSet<Classes> Classes { get; set; }
    }
}