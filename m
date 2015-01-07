Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E6B94E008EC; Wed,  7 Jan 2015 07:15:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A02FFE0089B
	for <yocto@yoctoproject.org>; Wed,  7 Jan 2015 07:15:04 -0800 (PST)
Received: from [70.30.87.145] (port=49877 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1Y8sK5-0000vF-KA; Wed, 07 Jan 2015 10:15:01 -0500
Date: Wed, 7 Jan 2015 10:15:01 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Pascal Bach <pascal.bach@siemens.com>
In-Reply-To: <1420642704-1482-2-git-send-email-pascal.bach@siemens.com>
Message-ID: <alpine.LFD.2.11.1501071010110.18694@localhost>
References: <1420642704-1482-1-git-send-email-pascal.bach@siemens.com>
	<1420642704-1482-2-git-send-email-pascal.bach@siemens.com>
User-Agent: Alpine 2.11 (LFD 23 2013-08-11)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: yocto@yoctoproject.org
Subject: Re: [yocto-docs][PATCH 2/2] dev-manual: Add section about /dev population
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 07 Jan 2015 15:15:12 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 7 Jan 2015, Pascal Bach wrote:

> Signed-off-by: Pascal Bach <pascal.bach@siemens.com>
> ---
>  .../dev-manual/dev-manual-common-tasks.xml         |  104 ++++++++++++++++++++
>  1 file changed, 104 insertions(+)
>
> diff --git a/documentation/dev-manual/dev-manual-common-tasks.xml b/documentation/dev-manual/dev-manual-common-tasks.xml
> index 17d725b..9072586 100644
> --- a/documentation/dev-manual/dev-manual-common-tasks.xml
> +++ b/documentation/dev-manual/dev-manual-common-tasks.xml
> @@ -7582,6 +7582,110 @@ Gateways via their Web Interfaces</ulink>"</emphasis>
>          </section>
>      </section>
>
> +    <section id="selecting-dev-manager">
> +        <title>Selecting a Device Manager</title>
> +
> +        <para>
> +            Yocto provides multiple ways to manage <filename>/dev</filename>

  add a colon at the end of that line.

> +            <itemizedlist>
> +                <listitem><para>
> +                <emphasis>Persistent and pre populated <filename>/dev</filename>:</emphasis>
                                               ^ hyphenate

> +                in this case the <filename>/dev</filename> directory is persistent
> +                and the required device nodes are created at build time.
> +                </para></listitem>
> +
> +                <listitem><para>
> +                <emphasis>Use <filename>devtmps</filename> with a device manager:</emphasis>
                                           ^^^^^^^ devtmpfs


> +                in this case the <filename>/dev</filename> directory is provided
> +                by the kernel as an in memory file system and is automatically
                                         ^ hyphenate

> +                populated by the kernel at runtime. Additional configuration of
> +                device nodes is done in user space by a device manager like
> +                <filename>udev</filename> or <filename>busybox-mdev</filename>.
> +                </para></listitem>
> +            </itemizedlist>
> +        </para>
> +
> +        <section id="static-dev-management">
> +            <title>Use Persistent and pre-populated <filename>/dev</filename></title>
> +
> +            <para>
> +                To use the static method for device population the variable
> +                <ulink url='&YOCTO_DOCS_REF_URL;#var-USE_DEVFS'><filename>USE_DEVFS</filename></ulink>
> +                needs to be set to 0.
> +
> +                <literallayout class='monospaced'>
> +     USE_DEVFS = "0"
> +                </literallayout>
> +            </para>
> +
> +            <para>
> +                The content of the resulting <filename>/dev</filename> directory
> +                is defined in a Device Table file. The device table to use is defined by the variable
> +                <ulink url='&YOCTO_DOCS_REF_URL;#var-IMAGE_DEVICE_TABLES'><filename>IMAGE_DEVICE_TABLES</filename></ulink> and should be set
> +                in the <ulink url='&YOCTO_DOCS_REF_URL;#var-MACHINE'><filename>MACHINE</filename></ulink>,
> +                <ulink url='&YOCTO_DOCS_REF_URL;#var-DISTRO'><filename>DISTRO</filename></ulink>
> +                or <filename>local.conf</filename> configuration file.
> +            </para>
> +
> +            <para>
> +                If nothing is defined the default <filename>device_table-minimal.txt</filename> is used.
> +            </para>
> +
> +            <para>
> +                The population is handled by the <filename>makedevs</filename> utility
> +                during image creation.
> +
> +                <literallayout class='monospaced'>
> +     IMAGE_DEVICE_TABLES = "device_table-mymachine.txt"
> +                </literallayout>
> +
> +            </para>
> +        </section>
> +
> +        <section id="devtmps-dev-management">
                        ^^^^^^^ devtmpfs

> +            <title>Use <filename>devtmpfs</filename> and a device manager</title>
> +
> +            <para>
> +                To use the dynamic method for device population the variable
> +                <ulink url='&YOCTO_DOCS_REF_URL;#var-USE_DEVFS'><filename>USE_DEVFS</filename></ulink>
> +                needs to be set to 1. This is the default.
> +
> +                <literallayout class='monospaced'>
> +     USE_DEVFS = "1"
> +                </literallayout>
> +
> +                This way the resulting <filename>/dev</filename> is populated by the kernel

  i would add the word "directory" after /dev above.

> +                using <filename>devtmpfs</filename>. Make sure the corresponding
> +                kernel configuration variable <filename>CONFIG_DEVTMPFS</filename> is set
> +                when building a linux kernel.
                                   ^^^^^ Linux (capitalize)

> +
> +            </para>
> +            <para>
> +                All devices created by <filename>devtmpfs</filename> will be
> +                owned by <filename>root</filename> and have permissions <filename>0600</filename>.
> +
> +                To have more control over the device nodes a device manager like
> +                <filename>udev</filename> or <filename>busybox-mdev</filename>
> +                can be used.
> +
> +                The device manager to use is defined by the variable
> +                <filename>VIRTUAL-RUNTIME_dev_manager</filename> and should be set
> +                in the <ulink url='&YOCTO_DOCS_REF_URL;#var-MACHINE'><filename>MACHINE</filename></ulink>,
> +                <ulink url='&YOCTO_DOCS_REF_URL;#var-DISTRO'><filename>DISTRO</filename></ulink>
> +                or <filename>local.conf</filename> configuration file.
> +
> +                <literallayout class='monospaced'>
> +
> +     VIRTUAL-RUNTIME_dev_manager = "udev"
> +
> +     # Some alternative values
> +     # VIRTUAL-RUNTIME_dev_manager = "busybox-mdev"
> +     # VIRTUAL-RUNTIME_dev_manager = "systemd"
> +                </literallayout>
> +            </para>
> +        </section>
> +    </section>
> +
>      <section id="platdev-appdev-srcrev">
>          <title>Using an External SCM</title>

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

