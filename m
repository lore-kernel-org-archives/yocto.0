Return-Path: <hans.beckerus@gmail.com>
Received: from mail-la0-f50.google.com (mail-la0-f50.google.com
	[209.85.215.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10109E013AC
	for <yocto@yoctoproject.org>; Sun, 24 Mar 2013 07:01:08 -0700 (PDT)
Received: by mail-la0-f50.google.com with SMTP id ec20so9678828lab.23
	for <yocto@yoctoproject.org>; Sun, 24 Mar 2013 07:01:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:message-id:date:from:user-agent:mime-version:to:cc
	:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=JDoPFSTy6QtFaqeOi7yyEaneWI/Xyv31UWqId+LFeM4=;
	b=mglz0iWztKtHrOPZsLQrmSEMjy21ftjYybq0/UuhOn3M9O2QyYDxrI08UpJyRfNSqf
	FM4MIE5UF7Lxm04+C2lWY8B514EwehLUE/oRD5pAUl1JxgGag3Ozr9MRO0IZqYbbK56G
	qKNFvnxe4p2VuE0am+4PiYfshkoKLp2bBay54VRuC09Qu+gCm9RQV2lIU1wNDgCH/3pZ
	6gnImXlBmMvzu2i4K2Jb0sDYG/JBvcPp4Wucp3zaM+DkkDhMwBNbLH+d66Ov4bG3IhVm
	Ro+Rsn2sI91p4lt+P6RDgRbgbxRy2ZOTj03vfatgtCH2fqvnMoH+55pAnhPBSlMRDdZe
	jJcg==
X-Received: by 10.112.48.39 with SMTP id i7mr4139069lbn.129.1364133667150;
	Sun, 24 Mar 2013 07:01:07 -0700 (PDT)
Received: from [192.168.0.10] (h135n8-rny-a12.ias.bredband.telia.com.
	[217.209.54.135])
	by mx.google.com with ESMTPS id l1sm3736285lbn.8.2013.03.24.07.01.05
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sun, 24 Mar 2013 07:01:06 -0700 (PDT)
Message-ID: <514F071F.6090507@gmail.com>
Date: Sun, 24 Mar 2013 15:01:03 +0100
From: Hans Beckerus <hans.beckerus@gmail.com>
User-Agent: Mozilla/5.0 (Windows NT 6.2;
	rv:17.0) Gecko/20130307 Thunderbird/17.0.4
MIME-Version: 1.0
To: Jochen Trumpf <Jochen.Trumpf@anu.edu.au>
References: <6119177.GIhaGmj4Be@jake>
In-Reply-To: <6119177.GIhaGmj4Be@jake>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: remove /usr/share/terminfo
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
X-List-Received-Date: Sun, 24 Mar 2013 14:01:09 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-03-24 11:06, Jochen Trumpf wrote:
> Hi Hans,
>
> I am not subscribed to [yocto], just browsing it occasionally, so please
> excuse the private email.
>
> For this sort of thing I am using the following in my image recipe (stolen
> from some gumstix image recipe in meta-gumstix-extras, danny branch):
>
> -- cut --
> # this section removes remnants of legacy sysvinit support
> # for packages installed above
> IMAGE_FILE_BLACKLIST += " \
>                          /etc/init.d/crond \
>                          /etc/init.d/dbus-1 \
>                          /etc/init.d/sshd \
>   "
>
> remove_blacklist_files() {
>          for i in ${IMAGE_FILE_BLACKLIST}; do
>                  rm -rf ${IMAGE_ROOTFS}$i
>          done
>
> }
>
> ROOTFS_POSTPROCESS_COMMAND =+ "remove_blacklist_files ; "
> -- cut --
>
> You can add arbitrary commands to ROOTFS_POSTPROCESS_COMMAND, e.g. your link
> to the network share. As you can see, you can use wildcards in the blacklist
> entries, or anything that rm -rf will understand.
>
> In case you want to use a similar mechanism to ADD files that are not already
> present on your build machine, that is not (easily) possible since
> image.bbclass does not support do_fetch, so SRC_URI does not work within an
> image recipe. The philosophy seems to be that you need a separate recipe to
> add things.
>
> Hope this helps.
>
> Cheers,
> Jochen
>
> P.S.: Feel free to forward this to the list if you think it might be
> interesting for other people.

Hi Jochen. Thanks for the information. As you might have seen already, I 
solved it by using a .bbappend for ncurses, but I must admit that your 
solution is a lot more elegant. I will try your approach instead and 
keep it in mind when needing something similar in the future.

Hans


