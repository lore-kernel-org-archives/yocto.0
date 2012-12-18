Return-Path: <philip@balister.org>
Received: from starfish.geekisp.com (starfish.geekisp.com [216.168.135.166])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id F2AE7E006B4
	for <yocto@yoctoproject.org>; Tue, 18 Dec 2012 06:13:55 -0800 (PST)
Received: (qmail 6253 invoked by uid 1003); 18 Dec 2012 14:13:55 -0000
Received: from unknown (HELO ?192.168.1.105?)
	(philip@opensdr.com@96.240.164.36)
	by mail.geekisp.com with (DHE-RSA-AES256-SHA encrypted) SMTP;
	18 Dec 2012 14:13:54 -0000
Message-ID: <50D07A22.8000906@balister.org>
Date: Tue, 18 Dec 2012 09:13:54 -0500
From: Philip Balister <philip@balister.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: tom.zanussi@intel.com
References: <cover.1355766001.git.tom.zanussi@intel.com>
	<f339ca3f94ec7bb6a749c5973acb1f85bc1ace6c.1355766001.git.tom.zanussi@intel.com>
In-Reply-To: <f339ca3f94ec7bb6a749c5973acb1f85bc1ace6c.1355766001.git.tom.zanussi@intel.com>
X-Enigmail-Version: 1.4.6
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
X-List-Received-Date: Tue, 18 Dec 2012 14:13:56 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 12/17/2012 12:51 PM, tom.zanussi@intel.com wrote:
> From: Tom Zanussi <tom.zanussi@intel.com>
> 
> Add a new yocto_layer_create() function that will be used to generate
> a generic yocto layer (for the new 'yocto-layer' command).

How is a "yocto layer" different from an OpenEmbedded layer? If you
insist on "yocto layter", wouldn't "Yocto Project layer" be more accurate.

One of our goals for next year should be to clean up our terminology to
reduce confusion in the user community.

Philip

> 
> Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
> ---
>  scripts/lib/bsp/engine.py | 56 +++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 56 insertions(+)
> 
> diff --git a/scripts/lib/bsp/engine.py b/scripts/lib/bsp/engine.py
> index 8985544..d406e79 100644
> --- a/scripts/lib/bsp/engine.py
> +++ b/scripts/lib/bsp/engine.py
> @@ -1352,6 +1352,62 @@ def expand_targets(context, bsp_output_dir):
>      return target_files
>  
>  
> +def yocto_layer_create(layer_name, scripts_path, layer_output_dir, codedump, properties_file):
> +    """
> +    Create yocto layer
> +
> +    layer_name - user-defined layer name
> +    scripts_path - absolute path to yocto /scripts dir
> +    bsp_output_dir - dirname to create for BSP
> +    codedump - dump generated code to bspgen.out
> +    properties_file - use values from here if nonempty i.e no prompting
> +
> +    arch - the arch for a generic layer is 'generic-layer', defined in
> +           scripts/lib/bsp/substrate/target/generic-layer
> +    """
> +    if os.path.exists(bsp_output_dir):
> +        print "\nBSP output dir already exists, exiting. (%s)" % bsp_output_dir
> +        sys.exit(1)
> +
> +    properties = None
> +
> +    if properties_file:
> +        try:
> +            infile = open(properties_file, "r")
> +        except IOError:
> +            print "Couldn't open properties file %s for reading, exiting" % properties_file
> +            sys.exit(1)
> +
> +        properties = json.load(infile)
> +
> +    os.mkdir(bsp_output_dir)
> +
> +    context = create_context(machine, arch, scripts_path)
> +    target_files = expand_targets(context, bsp_output_dir)
> +
> +    input_lines = gather_inputlines(target_files)
> +
> +    program_lines = []
> +
> +    gen_program_header_lines(program_lines)
> +
> +    gen_initial_property_vals(input_lines, program_lines)
> +
> +    if properties:
> +        gen_supplied_property_vals(properties, program_lines)
> +
> +    gen_program_machine_lines(machine, program_lines)
> +
> +    if not properties:
> +        gen_program_input_lines(input_lines, program_lines, context)
> +
> +    gen_program_lines(target_files, program_lines)
> +
> +    run_program_lines(program_lines, codedump)
> +
> +    print "New %s BSP created in %s" % (arch, bsp_output_dir)
> +
> +
>  def yocto_bsp_create(machine, arch, scripts_path, bsp_output_dir, codedump, properties_file):
>      """
>      Create bsp
> 

