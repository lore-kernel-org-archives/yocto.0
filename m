Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79CB2E0120F
	for <yocto@yoctoproject.org>; Fri,  2 Sep 2011 08:48:23 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p82FmAlD019478
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 2 Sep 2011 08:48:10 -0700 (PDT)
Received: from [128.224.147.214] (128.224.147.214) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Fri, 2 Sep 2011 08:48:10 -0700
Message-ID: <4E60FAB5.8050605@windriver.com>
Date: Fri, 2 Sep 2011 11:48:05 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.18) Gecko/20110617 Thunderbird/3.1.11 ThunderBrowse/3.8
MIME-Version: 1.0
To: Chris Tapp <opensource@keylevel.com>
References: <B1028606-FA51-475C-A6D5-6EBC31929292@keylevel.com>
In-Reply-To: <B1028606-FA51-475C-A6D5-6EBC31929292@keylevel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Splitting processor and target in BSPs
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
X-List-Received-Date: Fri, 02 Sep 2011 15:48:23 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-09-02 03:26 AM, Chris Tapp wrote:
> How should meta data be structured so that a layer can support a set of
> systems using a set of processors?
>
> For example, many of the 'eBox' systems use variants of the Vortex86
> SoC. So, a set of machine files are needed for these (e.g. ebox-3300,
> ebox-3500mx, etc.).
>
> These have different peripherals available (e.g. some have serial, some
> don't) and use different SoC variants with different cpu, sound, etc. It
> would therefore make sense for the machine configuration to inherit the
> SoC attributes (for the common features) and add (or remove) machine
> specific attributes (e.g. serial) to these. This can be done by putting
> the SoC bits in to an include.
>
> However, kernel configuration becomes a little bit more complicated as
> this is done by machine name. A kernel recipe will be needed for each
> machine (e.g. for the different sound drivers), but I can't work out how
> to do this using a base configuration for the SoCs that are shared and
> then adding machine specific parts. I can do it using (for example) a
> .defconfig for each machine, but that would require updates to multiple
> files to change the SoC configuration.
>
> I guess what I'm really asking is, is it possible to have a base CPU
> configuration and add a machine configuration to this ?
>
> I've recently seen discussion of .cfg kernel fragment files. Are these
> what I should be looking at? Are these available in the releases or only
> in the development branch?

What you've described is one of the primary reasons that the
configuration fragments exist :) You define a common set of
config fragments, extend and then select what you want.

These are available in all the releases, but the capabilities
are evolving and I merge more changes into the yocto bindings
for manipulating the configuration fragments outside of a kernel
tree proper.

If you have your own kernel repository based on linux-yocto, you
could implement any of this inside the tree. If you are re-using
existing machines/branches in the linux-yocto tree, you can also
do what you want, but have to do it via a collection of configuration
fragments that are appended to the SRC_URI based on the machine
you are building,.

Cheers,

Bruce

>
> Chris Tapp
>
> opensource@keylevel.com
> www.keylevel.com
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


