Return-Path: <philip@balister.org>
Received: from sanddollar.geekisp.com (sanddollar.geekisp.com
	[216.168.135.167])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id E277FE00294
	for <yocto@yoctoproject.org>; Tue, 18 Dec 2012 08:37:16 -0800 (PST)
Received: (qmail 1361 invoked by uid 1003); 18 Dec 2012 16:37:16 -0000
Received: from unknown (HELO ?192.168.1.105?)
	(philip@opensdr.com@96.240.164.36)
	by mail.geekisp.com with (DHE-RSA-AES256-SHA encrypted) SMTP;
	18 Dec 2012 16:37:16 -0000
Message-ID: <50D09BBB.1030604@balister.org>
Date: Tue, 18 Dec 2012 11:37:15 -0500
From: Philip Balister <philip@balister.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: Tom Zanussi <tom.zanussi@intel.com>
References: <cover.1355766001.git.tom.zanussi@intel.com>
	<f339ca3f94ec7bb6a749c5973acb1f85bc1ace6c.1355766001.git.tom.zanussi@intel.com>
	<50D07A22.8000906@balister.org>
	<1355841229.20791.32.camel@empanada>
In-Reply-To: <1355841229.20791.32.camel@empanada>
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
X-List-Received-Date: Tue, 18 Dec 2012 16:37:17 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 12/18/2012 09:33 AM, Tom Zanussi wrote:
> On Tue, 2012-12-18 at 09:13 -0500, Philip Balister wrote:
>> On 12/17/2012 12:51 PM, tom.zanussi@intel.com wrote:
>>> From: Tom Zanussi <tom.zanussi@intel.com>
>>>
>>> Add a new yocto_layer_create() function that will be used to generate
>>> a generic yocto layer (for the new 'yocto-layer' command).
>>
>> How is a "yocto layer" different from an OpenEmbedded layer? If you
>> insist on "yocto layter", wouldn't "Yocto Project layer" be more accurate.
>>
> 
> Technically it isn't any different, but it's based on the template
> engine code and templates that make up the 'Yocto BSP Tools', which for
> various reasons (they create Yocto-compliant BSP layers, something not
> of interest to OpenEmbedded proper, and it probably doesn't make sense
> to clutter oe-core with a bunch of 'template data', etc) live in poky
> and not oe-core.

Actually, BSP's should work standalone with oe-core, so it is of interest.

> 
> As such, the new tool is named 'yocto-layer' to match the other existing
> Yocto BSP tools, 'yocto-bsp' and 'yocto-kernel'.

I will now get pedantic. <rday mode on>

The meta-yocto layer functions as a distro layer. So referring to things
as yocto this and yocto that, suggests they only work with the
meta-yocto layer.

So it doesn't make sense to me to put general purpose tools in a distro
layer.

<rday mode off>

> 
> Tom
> 
> 
>> One of our goals for next year should be to clean up our terminology to
>> reduce confusion in the user community.
>>
>> Philip
>>
>>>
>>> Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
>>> ---
>>>  scripts/lib/bsp/engine.py | 56 +++++++++++++++++++++++++++++++++++++++++++++++
>>>  1 file changed, 56 insertions(+)
>>>
>>> diff --git a/scripts/lib/bsp/engine.py b/scripts/lib/bsp/engine.py
>>> index 8985544..d406e79 100644
>>> --- a/scripts/lib/bsp/engine.py
>>> +++ b/scripts/lib/bsp/engine.py
>>> @@ -1352,6 +1352,62 @@ def expand_targets(context, bsp_output_dir):
>>>      return target_files
>>>  
>>>  
>>> +def yocto_layer_create(layer_name, scripts_path, layer_output_dir, codedump, properties_file):
>>> +    """
>>> +    Create yocto layer
>>> +
>>> +    layer_name - user-defined layer name
>>> +    scripts_path - absolute path to yocto /scripts dir
>>> +    bsp_output_dir - dirname to create for BSP
>>> +    codedump - dump generated code to bspgen.out
>>> +    properties_file - use values from here if nonempty i.e no prompting
>>> +
>>> +    arch - the arch for a generic layer is 'generic-layer', defined in
>>> +           scripts/lib/bsp/substrate/target/generic-layer
>>> +    """
>>> +    if os.path.exists(bsp_output_dir):
>>> +        print "\nBSP output dir already exists, exiting. (%s)" % bsp_output_dir
>>> +        sys.exit(1)
>>> +
>>> +    properties = None
>>> +
>>> +    if properties_file:
>>> +        try:
>>> +            infile = open(properties_file, "r")
>>> +        except IOError:
>>> +            print "Couldn't open properties file %s for reading, exiting" % properties_file
>>> +            sys.exit(1)
>>> +
>>> +        properties = json.load(infile)
>>> +
>>> +    os.mkdir(bsp_output_dir)
>>> +
>>> +    context = create_context(machine, arch, scripts_path)
>>> +    target_files = expand_targets(context, bsp_output_dir)
>>> +
>>> +    input_lines = gather_inputlines(target_files)
>>> +
>>> +    program_lines = []
>>> +
>>> +    gen_program_header_lines(program_lines)
>>> +
>>> +    gen_initial_property_vals(input_lines, program_lines)
>>> +
>>> +    if properties:
>>> +        gen_supplied_property_vals(properties, program_lines)
>>> +
>>> +    gen_program_machine_lines(machine, program_lines)
>>> +
>>> +    if not properties:
>>> +        gen_program_input_lines(input_lines, program_lines, context)
>>> +
>>> +    gen_program_lines(target_files, program_lines)
>>> +
>>> +    run_program_lines(program_lines, codedump)
>>> +
>>> +    print "New %s BSP created in %s" % (arch, bsp_output_dir)
>>> +
>>> +
>>>  def yocto_bsp_create(machine, arch, scripts_path, bsp_output_dir, codedump, properties_file):
>>>      """
>>>      Create bsp
>>>
> 
> 
> 
> 

