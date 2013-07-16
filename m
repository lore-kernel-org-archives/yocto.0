Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E6C9E0071F
	for <yocto@yoctoproject.org>; Tue, 16 Jul 2013 14:19:38 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 16 Jul 2013 14:17:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,679,1367996400"; d="scan'208";a="371375826"
Received: from unknown (HELO [10.255.13.97]) ([10.255.13.97])
	by orsmga002.jf.intel.com with ESMTP; 16 Jul 2013 14:19:37 -0700
Message-ID: <51E5B8E9.60806@linux.intel.com>
Date: Tue, 16 Jul 2013 14:19:37 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130514 Thunderbird/17.0.6
MIME-Version: 1.0
To: Brian Hutchinson <b.hutchman@gmail.com>
References: <CAFZh4h-cZH_CU--Vsjq7=97HDbQXH67SCO5aKYR9cX7h4uNxuQ@mail.gmail.com>
In-Reply-To: <CAFZh4h-cZH_CU--Vsjq7=97HDbQXH67SCO5aKYR9cX7h4uNxuQ@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Yocto + meta-networking
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
X-List-Received-Date: Tue, 16 Jul 2013 21:19:41 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 07/16/2013 02:06 PM, Brian Hutchinson wrote:
> Hi,
>
> What is the "right" way of adding the meta-networking to Yocto?  I'm
> obviously not doing something right.
>
> At the poky directory level, I cloned meta-openembedded.  I then tried
> to go to my build's local.conf and adding meta-networking and meta-oe
> layers and I'm getting a dependency message when I try to bitbake
> net-snmp that says:
>
Did you mean your bblayers.conf file?  I am not sure you need meta-oe if 
you are just building net-snmp, this is what your bblayers.conf should 
look like:

BBLAYERS ?= " \
   /home/sgw/yocto/poky/meta \
   /home/sgw/yocto/poky/meta-yocto \
   /home/sgw/yocto/poky/meta-yocto-bsp \
   /home/sgw/yocto/layers/meta-openembedded/meta-networking \
   "

This is from a POKY build, if this is oe-core alone then you would not 
have the meta-yocto* layers.

Sau!


> ERROR: Layer dependency core of layer networking not found
>
> This makes me think that meta-openembedded is wanting openembedded-core
> but I've never tried to use that with Yocto before so I thought I better
> ask before I totally mess up my build environment.
>
> I have a rootfilesystem build based on Denzil and I need net-snmp and
> the meta-networking Denzil branch is pretty much empty so I cloned
> master in order to get net-snmp so I don't know if mixing branches could
> be my problem (don't know how much that matters but I usually try to use
> the same release branch of various components).
>
> I've looked for examples of this kind of setup but haven't found much.
>
> Regards,
>
> Brian
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

