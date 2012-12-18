Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9875FE006B4
	for <yocto@yoctoproject.org>; Tue, 18 Dec 2012 06:33:51 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 18 Dec 2012 06:33:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,309,1355126400"; d="scan'208";a="266256130"
Received: from unknown (HELO [10.255.13.202]) ([10.255.13.202])
	by fmsmga002.fm.intel.com with ESMTP; 18 Dec 2012 06:33:49 -0800
Message-ID: <1355841229.20791.32.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: Philip Balister <philip@balister.org>
Date: Tue, 18 Dec 2012 08:33:49 -0600
In-Reply-To: <50D07A22.8000906@balister.org>
References: <cover.1355766001.git.tom.zanussi@intel.com>
	<f339ca3f94ec7bb6a749c5973acb1f85bc1ace6c.1355766001.git.tom.zanussi@intel.com>
	<50D07A22.8000906@balister.org>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org, dvhart@linux.intel.com
Subject: Re: [PATCH 1/5] scripts/lib/bsp/engine.py: add yocto_layer_create()
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 18 Dec 2012 14:33:51 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2012-12-18 at 09:13 -0500, Philip Balister wrote:
> On 12/17/2012 12:51 PM, tom.zanussi@intel.com wrote:
> > From: Tom Zanussi <tom.zanussi@intel.com>
> > 
> > Add a new yocto_layer_create() function that will be used to generate
> > a generic yocto layer (for the new 'yocto-layer' command).
> 
> How is a "yocto layer" different from an OpenEmbedded layer? If you
> insist on "yocto layter", wouldn't "Yocto Project layer" be more accurate.
> 

Technically it isn't any different, but it's based on the template
engine code and templates that make up the 'Yocto BSP Tools', which for
various reasons (they create Yocto-compliant BSP layers, something not
of interest to OpenEmbedded proper, and it probably doesn't make sense
to clutter oe-core with a bunch of 'template data', etc) live in poky
and not oe-core.

As such, the new tool is named 'yocto-layer' to match the other existing
Yocto BSP tools, 'yocto-bsp' and 'yocto-kernel'.

Tom


> One of our goals for next year should be to clean up our terminology to
> reduce confusion in the user community.
> 
> Philip
> 
> > 
> > Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
> > ---
> >  scripts/lib/bsp/engine.py | 56 +++++++++++++++++++++++++++++++++++++++++++++++
> >  1 file changed, 56 insertions(+)
> > 
> > diff --git a/scripts/lib/bsp/engine.py b/scripts/lib/bsp/engine.py
> > index 8985544..d406e79 100644
> > --- a/scripts/lib/bsp/engine.py
> > +++ b/scripts/lib/bsp/engine.py
> > @@ -1352,6 +1352,62 @@ def expand_targets(context, bsp_output_dir):
> >      return target_files
> >  
> >  
> > +def yocto_layer_create(layer_name, scripts_path, layer_output_dir, codedump, properties_file):
> > +    """
> > +    Create yocto layer
> > +
> > +    layer_name - user-defined layer name
> > +    scripts_path - absolute path to yocto /scripts dir
> > +    bsp_output_dir - dirname to create for BSP
> > +    codedump - dump generated code to bspgen.out
> > +    properties_file - use values from here if nonempty i.e no prompting
> > +
> > +    arch - the arch for a generic layer is 'generic-layer', defined in
> > +           scripts/lib/bsp/substrate/target/generic-layer
> > +    """
> > +    if os.path.exists(bsp_output_dir):
> > +        print "\nBSP output dir already exists, exiting. (%s)" % bsp_output_dir
> > +        sys.exit(1)
> > +
> > +    properties = None
> > +
> > +    if properties_file:
> > +        try:
> > +            infile = open(properties_file, "r")
> > +        except IOError:
> > +            print "Couldn't open properties file %s for reading, exiting" % properties_file
> > +            sys.exit(1)
> > +
> > +        properties = json.load(infile)
> > +
> > +    os.mkdir(bsp_output_dir)
> > +
> > +    context = create_context(machine, arch, scripts_path)
> > +    target_files = expand_targets(context, bsp_output_dir)
> > +
> > +    input_lines = gather_inputlines(target_files)
> > +
> > +    program_lines = []
> > +
> > +    gen_program_header_lines(program_lines)
> > +
> > +    gen_initial_property_vals(input_lines, program_lines)
> > +
> > +    if properties:
> > +        gen_supplied_property_vals(properties, program_lines)
> > +
> > +    gen_program_machine_lines(machine, program_lines)
> > +
> > +    if not properties:
> > +        gen_program_input_lines(input_lines, program_lines, context)
> > +
> > +    gen_program_lines(target_files, program_lines)
> > +
> > +    run_program_lines(program_lines, codedump)
> > +
> > +    print "New %s BSP created in %s" % (arch, bsp_output_dir)
> > +
> > +
> >  def yocto_bsp_create(machine, arch, scripts_path, bsp_output_dir, codedump, properties_file):
> >      """
> >      Create bsp
> > 



