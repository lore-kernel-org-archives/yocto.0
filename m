Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2992E0054B
	for <yocto@yoctoproject.org>; Mon, 22 Apr 2013 08:23:29 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 22 Apr 2013 08:23:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,527,1363158000"; d="scan'208";a="322349134"
Received: from unknown (HELO [10.255.14.66]) ([10.255.14.66])
	by orsmga002.jf.intel.com with ESMTP; 22 Apr 2013 08:22:58 -0700
Message-ID: <1366644178.1627.2.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Date: Mon, 22 Apr 2013 10:22:58 -0500
In-Reply-To: <alpine.DEB.2.02.1304221112120.7521@oneiric>
References: <alpine.DEB.2.02.1304221112120.7521@oneiric>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [PATCH][meta-yocto] Fix typoes in BSP help scripts.
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
X-List-Received-Date: Mon, 22 Apr 2013 15:23:29 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2013-04-22 at 11:14 -0400, Robert P. J. Day wrote:
> Numerous examples of command "yocto bsp" should be "yocto-bsp".
> 
> Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>
> 

Yes, I'm continually making that mistake, on the command-line as well.
Maybe that means it should have been named something else. ;-)

Acked-by: Tom Zanussi <tom.zanussi@linux.intel.com>

> ---
> 
>   i'm assuming i'm not misintgerpreting what's happening here.
> 
> 
> 
> diff --git a/scripts/lib/bsp/help.py b/scripts/lib/bsp/help.py
> index 427b5a0..d152025 100644
> --- a/scripts/lib/bsp/help.py
> +++ b/scripts/lib/bsp/help.py
> @@ -120,13 +120,13 @@ yocto_bsp_create_usage = """
>   bblayers.conf file in order for it to be subsequently seen and
>   modified by the yocto-kernel tool.
> 
> - See 'yocto bsp help create' for more detailed instructions.
> + See 'yocto-bsp help create' for more detailed instructions.
> 
>   NOTE: For x86-based BSPs that select the EMGD xserver, the generated
>   BSP assumes the presence of the meta-intel layer. Ensure the
>   meta-intel layer is present and added to bblayers.conf.
> 
> - See 'yocto bsp help create' for more detailed instructions.
> + See 'yocto-bsp help create' for more detailed instructions.
>  """
> 
>  yocto_bsp_create_help = """
> @@ -216,16 +216,16 @@ yocto_bsp_list_usage = """
>   specified option or property needed by the BSP creation process.
> 
>   The first form enumerates all the possible values that exist and can
> - be specified for the 'karch' parameter to the 'yocto bsp create'
> + be specified for the 'karch' parameter to the 'yocto-bsp create'
>   command.
> 
>   The second form enumerates all the possible properties that exist and
> - must have values specified for them in the 'yocto bsp create' command
> + must have values specified for them in the 'yocto-bsp create' command
>   for the given 'karch'.
> 
>   The third form enumerates all the possible values that exist and can
>   be specified for any of the enumerable properties of the given
> - 'karch' in the 'yocto bsp create' command.
> + 'karch' in the 'yocto-bsp create' command.
> 
>   See 'yocto-bsp help list' for more details.
>  """
> @@ -247,7 +247,7 @@ DESCRIPTION
>      specified option or property needed by the BSP creation process.
> 
>      The first form enumerates all the possible values that exist and
> -    can be specified for the 'karch' parameter to the 'yocto bsp
> +    can be specified for the 'karch' parameter to the 'yocto-bsp
>      create' command.  Example output for the 'list karch' command:
> 
>      $ yocto-bsp list karch
> @@ -260,7 +260,7 @@ DESCRIPTION
>          qemu
> 
>      The second form enumerates all the possible properties that exist
> -    and must have values specified for them in the 'yocto bsp create'
> +    and must have values specified for them in the 'yocto-bsp create'
>      command for the given 'karch'.  This command is mainly meant to
>      allow the development user interface alternatives to the default
>      text-based prompting interface.  If the -o option is specified,
> @@ -326,7 +326,7 @@ DESCRIPTION
> 
>      The third form enumerates all the possible values that exist and
>      can be specified for any of the enumerable properties of the given
> -    'karch' in the 'yocto bsp create' command.  If the -o option is
> +    'karch' in the 'yocto-bsp create' command.  If the -o option is
>      specified, the list of values for the given property, in addition
>      to being displayed, will be written to the specified file as a
>      JSON object.  In this case, the object will consist of the set of
> 
> 
> rday
> 



