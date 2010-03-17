# Copyright (C) 2004, 2005, 2006, 2007, 2008, 2009 Gregoire Lejeune <gregoire.lejeune@free.fr>
# 
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307  USA

# Constants for ruby-graphviz
# 
# Constants::FORMATS: the possible output formats
#   "bmp", "canon", "dot", "xdot", "cmap", "dia", "eps", 
#   "fig", "gd", "gd2", "gif", "gtk", "hpgl", "ico", "imap",
#   "cmapx", "imap_np", "cmapx_np", "ismap", "jpeg", "jpg",
#   "jpe", "mif", "mp", "pcl", "pdf", "pic", "plain",
#   "plain-ext", "png", "ps", "ps2", "svg", "svgz", "tga",
#   "tiff", "tif", "vml", "vmlz", "vrml", "vtx", "wbmp",
#   "xlib", "none" 
# 
# Constants::PROGRAMS: The possible programs
#   "dot", "neato", "twopi", "fdp", "circo"
#
# Constants::GRAPHTYPE The possible types of graph
#   "digraph", "graph"
#
#
# The single letter codes used in constructors map as follows:
#   G => The root graph, with GRAPHATTRS 
#   E => Edge, with EDGESATTRS
#   N => Node, with NODESATTRS
#   S => subgraph
#   C => cluster
#
module Constants
  RGV_VERSION = "0.9.11"
  
  ## Const: Output formats
  FORMATS = [
    "bmp",
    "canon",
    "dot", 
    "xdot",
    "cmap", 
    "dia",
    "eps",
    "fig",
    "gd",
    "gd2",
    "gif",
    "gtk",
    "hpgl", 
    "ico",
    "imap", 
    "cmapx",
    "imap_np", 
    "cmapx_np",
    "ismap", 
    "jpeg", 
    "jpg", 
    "jpe", 
    "mif", 
    "mp",
    "pcl", 
    "pdf",
    "pic", 
    "plain", 
    "plain-ext",
    "png", 
    "ps", 
    "ps2",
    "svg", 
    "svgz",
    "tga",
    "tiff",
    "tif",
    "vml",
    "vmlz",
    "vrml", 
    "vtx", 
    "wbmp", 
    "xlib", 
    "none"
  ]

  ## Const: programs
  PROGRAMS = [
    "dot",
    "neato",
    "twopi",
    "fdp",
    "circo"
  ]

  ## Const: graphs type
  GRAPHTYPE = [
    "digraph",
	  "graph"
  ]

  def self.getAttrsFor( x )
    list = {}
    GENCS_ATTRS.each { |k,v|
      list[k] = v[:type] if x.match( v[:usedBy] ) and not list.keys.include?(k)
    }
    list
  end
  
  # E, N, G, S and C represent edges, nodes, the root graph, subgraphs and cluster subgraphs, respectively
  GENCS_ATTRS = {
    "Damping"             => { :usedBy => "G",    :type => :EscString },
    "K"                   => { :usedBy => "GC",   :type => :EscString },
    "URL"                 => { :usedBy => "ENGC", :type => :EscString },
    "arrowhead"           => { :usedBy => "E",    :type => :EscString },
    "arrowsize"           => { :usedBy => "E",    :type => :EscString },
    "arrowtail"           => { :usedBy => "E",    :type => :EscString },
    "aspect"              => { :usedBy => "G",    :type => :EscString },
    "bb"                  => { :usedBy => "G",    :type => :EscString },
    "bgcolor"             => { :usedBy => "GC",   :type => :EscString },
    "center"              => { :usedBy => "G",    :type => :EscString },
    "charset"             => { :usedBy => "G",    :type => :EscString },
    "clusterrank"         => { :usedBy => "G",    :type => :EscString },
    "color"               => { :usedBy => "ENC",  :type => :EscString },
    "colorscheme"         => { :usedBy => "ENCG", :type => :EscString },
    "comment"             => { :usedBy => "ENG",  :type => :EscString },
    "compound"            => { :usedBy => "G",    :type => :EscString },
    "concentrate"         => { :usedBy => "G",    :type => :EscString },
    "constraint"          => { :usedBy => "E",    :type => :EscString },
    "decorate"            => { :usedBy => "E",    :type => :EscString },
    "defaultdist"         => { :usedBy => "G",    :type => :EscString },
    "dim"                 => { :usedBy => "G",    :type => :EscString },
    "dimen"               => { :usedBy => "G",    :type => :EscString },
    "dir"                 => { :usedBy => "E",    :type => :EscString },
    "diredgeconstraints"  => { :usedBy => "G",    :type => :EscString },
    "distortion"          => { :usedBy => "N",    :type => :EscString },
    "dpi"                 => { :usedBy => "G",    :type => :EscString },
    "edgeURL"             => { :usedBy => "E",    :type => :EscString },
    "edgehref"            => { :usedBy => "E",    :type => :EscString },
    "edgetarget"          => { :usedBy => "E",    :type => :EscString },
    "edgetooltip"         => { :usedBy => "E",    :type => :EscString },
    "epsilon"             => { :usedBy => "G",    :type => :EscString },
    "esep"                => { :usedBy => "G",    :type => :EscString },
    "fillcolor"           => { :usedBy => "NC",   :type => :EscString },
    "fixedsize"           => { :usedBy => "N",    :type => :EscString },
    "fontcolor"           => { :usedBy => "ENGC", :type => :EscString },
    "fontname"            => { :usedBy => "ENGC", :type => :EscString },
    "fontnames"           => { :usedBy => "G",    :type => :EscString },
    "fontpath"            => { :usedBy => "G",    :type => :EscString },
    "fontsize"            => { :usedBy => "ENGC", :type => :EscString },
    "group"               => { :usedBy => "N",    :type => :EscString },
    "headURL"             => { :usedBy => "E",    :type => :EscString },
    "headclip"            => { :usedBy => "E",    :type => :EscString },
    "headhref"            => { :usedBy => "E",    :type => :EscString },
    "headlabel"           => { :usedBy => "E",    :type => :EscString },
    "headport"            => { :usedBy => "E",    :type => :EscString },
    "headtarget"          => { :usedBy => "E",    :type => :EscString },
    "headtooltip"         => { :usedBy => "E",    :type => :EscString },
    "height"              => { :usedBy => "N",    :type => :EscString },
    "href"                => { :usedBy => "NE",   :type => :EscString },
    "html"                => { :usedBy => "N",    :type => :HtmlString }, # API extension
    "id"                  => { :usedBy => "ENG",  :type => :EscString },
    "image"               => { :usedBy => "N",    :type => :EscString },
    "imagescale"          => { :usedBy => "N",    :type => :EscString },
    "label"               => { :usedBy => "ENGC", :type => :EscString },
    "labelURL"            => { :usedBy => "E",    :type => :EscString },
    "labelangle"          => { :usedBy => "E",    :type => :EscString },
    "labeldistance"       => { :usedBy => "E",    :type => :EscString },
    "labelfloat"          => { :usedBy => "E",    :type => :EscString },
    "labelfontcolor"      => { :usedBy => "E",    :type => :EscString },
    "labelfontname"       => { :usedBy => "E",    :type => :EscString },
    "labelfontsize"       => { :usedBy => "E",    :type => :EscString },
    "labelhref"           => { :usedBy => "E",    :type => :EscString },
    "labeljust"           => { :usedBy => "GC",   :type => :EscString },
    "labelloc"            => { :usedBy => "GCN",  :type => :EscString },
    "labeltarget"         => { :usedBy => "E",    :type => :EscString },
    "labeltooltip"        => { :usedBy => "E",    :type => :EscString },
    "landscape"           => { :usedBy => "G",    :type => :EscString },
    "layer"               => { :usedBy => "EN",   :type => :EscString },
    "layers"              => { :usedBy => "G",    :type => :EscString },
    "layersep"            => { :usedBy => "G",    :type => :EscString },
    "layout"              => { :usedBy => "G",    :type => :EscString },
    "len"                 => { :usedBy => "E",    :type => :EscString },
    "levels"              => { :usedBy => "G",    :type => :EscString },
    "levelsgap"           => { :usedBy => "G",    :type => :EscString },
    "lhead"               => { :usedBy => "E",    :type => :EscString },
    "lp"                  => { :usedBy => "EGC",  :type => :EscString },
    "ltail"               => { :usedBy => "E",    :type => :EscString },
    "margin"              => { :usedBy => "NG",   :type => :EscString },
    "maxiter"             => { :usedBy => "G",    :type => :EscString },
    "mclimit"             => { :usedBy => "G",    :type => :EscString },
    "mindist"             => { :usedBy => "G",    :type => :EscString },
    "minlen"              => { :usedBy => "E",    :type => :EscString },
    "mode"                => { :usedBy => "G",    :type => :EscString },
    "model"               => { :usedBy => "G",    :type => :EscString },
    "mosek"               => { :usedBy => "G",    :type => :EscString },
    "nodesep"             => { :usedBy => "G",    :type => :EscString },
    "nojustify"           => { :usedBy => "GCNE", :type => :EscString },
    "normalize"           => { :usedBy => "G",    :type => :EscString },
    "nslimit"             => { :usedBy => "G",    :type => :EscString },
    "nslimit1"            => { :usedBy => "G",    :type => :EscString },
    "ordering"            => { :usedBy => "G",    :type => :EscString },
    "orientation"         => { :usedBy => "NG",   :type => :EscString },
    "outputorder"         => { :usedBy => "G",    :type => :EscString },
    "overlap"             => { :usedBy => "G",    :type => :EscString },
    "overlap_scaling"     => { :usedBy => "G",    :type => :EscString },
    "pack"                => { :usedBy => "G",    :type => :EscString },
    "packmode"            => { :usedBy => "G",    :type => :EscString },
    "pad"                 => { :usedBy => "G",    :type => :EscString },
    "page"                => { :usedBy => "G",    :type => :EscString },
    "pagedir"             => { :usedBy => "G",    :type => :EscString },
    "pencolor"            => { :usedBy => "C",    :type => :EscString },
    "penwidth"            => { :usedBy => "CNE",  :type => :EscString },
    "peripheries"         => { :usedBy => "NC",   :type => :EscString },
    "pin"                 => { :usedBy => "N",    :type => :EscString },
    "pos"                 => { :usedBy => "EN",   :type => :EscString },
    "quadtree"            => { :usedBy => "G",    :type => :EscString },
    "quantum"             => { :usedBy => "G",    :type => :EscString },
    "rank"                => { :usedBy => "S",    :type => :EscString },
    "rankdir"             => { :usedBy => "G",    :type => :EscString },
    "ranksep"             => { :usedBy => "G",    :type => :EscString },
    "ratio"               => { :usedBy => "G",    :type => :EscString },
    "rects"               => { :usedBy => "N",    :type => :EscString },
    "regular"             => { :usedBy => "N",    :type => :EscString },
    "remincross"          => { :usedBy => "G",    :type => :EscString },
    "repulsiveforce"      => { :usedBy => "G",    :type => :EscString },
    "resolution"          => { :usedBy => "G",    :type => :EscString },
    "root"                => { :usedBy => "GN",   :type => :EscString },
    "rotate"              => { :usedBy => "G",    :type => :EscString },
    "samehead"            => { :usedBy => "E",    :type => :EscString },
    "sametail"            => { :usedBy => "E",    :type => :EscString },
    "samplepoints"        => { :usedBy => "G",    :type => :EscString },
    "searchsize"          => { :usedBy => "G",    :type => :EscString },
    "sep"                 => { :usedBy => "G",    :type => :EscString },
    "shape"               => { :usedBy => "N",    :type => :EscString },
    "shapefile"           => { :usedBy => "N",    :type => :EscString },
    "showboxes"           => { :usedBy => "ENG",  :type => :EscString },
    "sides"               => { :usedBy => "N",    :type => :EscString },
    "size"                => { :usedBy => "NG",   :type => :EscString },
    "skew"                => { :usedBy => "N",    :type => :EscString },
    "smoothing"           => { :usedBy => "G",    :type => :EscString },
    "sortv"               => { :usedBy => "GCN",  :type => :EscString },
    "splines"             => { :usedBy => "G",    :type => :EscString },
    "start"               => { :usedBy => "G",    :type => :EscString },
    "style"               => { :usedBy => "ENC",  :type => :EscString },
    "stylesheet"          => { :usedBy => "G",    :type => :EscString },
    "tailURL"             => { :usedBy => "E",    :type => :EscString },
    "tailclip"            => { :usedBy => "E",    :type => :EscString },
    "tailhref"            => { :usedBy => "E",    :type => :EscString },
    "taillabel"           => { :usedBy => "E",    :type => :EscString },
    "tailport"            => { :usedBy => "E",    :type => :EscString },
    "tailtarget"          => { :usedBy => "E",    :type => :EscString },
    "tailtooltip"         => { :usedBy => "E",    :type => :EscString },
    "target"              => { :usedBy => "ENGC", :type => :EscString },
    "tooltip"             => { :usedBy => "NEC",  :type => :EscString },
    "truecolor"           => { :usedBy => "G",    :type => :EscString },
    "vertices"            => { :usedBy => "N",    :type => :EscString },
    "viewport"            => { :usedBy => "G",    :type => :EscString },
    "voro_margin"         => { :usedBy => "G",    :type => :EscString },
    "weight"              => { :usedBy => "E",    :type => :EscString },
    "width"               => { :usedBy => "N",    :type => :EscString },
    "z"                   => { :usedBy => "N",    :type => :EscString }
  }

  ## Const: Graph attributs
  GRAPHSATTRS = Constants::getAttrsFor( /G|S|C/ )

  ## Const: Node attributs
  NODESATTRS = Constants::getAttrsFor( /N/ )

  ## Const: Edge attributs
  EDGESATTRS = Constants::getAttrsFor( /E/ )
end
