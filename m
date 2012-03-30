Return-Path: <raj.khem@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 028CCE013D6
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 23:29:24 -0700 (PDT)
Received: by lagu2 with SMTP id u2so522282lag.35
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 23:29:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=4+MRepQa7UfFAupgqq+yp4LTUMqlcHOOoYxyDRLhefo=;
	b=AVIIOHXVhwK9tWPV66coXD5h/HpVDvRhNPzNZ9x9aPH/NWbjsisS8yOu1UUKNuKEwF
	qBw7DFMcMX785Sn2DupT9GjTxVQE1p5SrQUxHaWlzgqiRQt27VmwAdTFHWlNi992d8yz
	cBg1PXPTzKSRNAQOSd17YYKJnNmwBBBuX14dxpg7dTKIOEsZztFTnB/mBJ5vBCOWDauh
	yLZ/KWtHxOgSB/sOWZte7Q3OHscsj9ClCY7/nRxcJQ9oqj3Fi0cUQZd8gMOpxwU/IcrK
	b0tjZ5R8WYGzJJ5ZdBWZEVRFRFfFrqIOGlJ7TWiWU1ghgWgoBqcBpHRlgqpp5G7rJurE
	o1UA==
Received: by 10.152.102.173 with SMTP id fp13mr1191623lab.38.1333088963893;
	Thu, 29 Mar 2012 23:29:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.152.3.161 with HTTP; Thu, 29 Mar 2012 23:28:53 -0700 (PDT)
In-Reply-To: <1333041222.8318.46.camel@rchatre.jf.intel.com>
References: <1333041222.8318.46.camel@rchatre.jf.intel.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 29 Mar 2012 23:28:53 -0700
Message-ID: <CAMKF1sqCu--JUWwj4ehApYSkfO5Farb6oQeYfJiOqcX9NzBUqg@mail.gmail.com>
To: "Chatre, Reinette" <reinette.chatre@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: care when using remove_packaging_data_files
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
X-List-Received-Date: Fri, 30 Mar 2012 06:29:25 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Mar 29, 2012 at 10:13 AM, Chatre, Reinette
<reinette.chatre@intel.com> wrote:
> Hi,
>
> I am building an image using ipk packages. The minimal images all seem
> to set ROOTFS_POSTPROCESS_COMMAND to remove_packaging_data_files, which
> (for all package management systems) recursively removes the packages
> directory in /var/lib. This seems a bit harsh considering that some
> packages may still be in the unpacked state and thus have a script in
> that directory that needs to be run when the image boots.

hmmm what cased did you find ? is it possible to fix the recipe itself
to have those scripts post processed offline

>
> ipk seems to cleanup without the need of remove_packaging_data_files -
> rootfs_ipk.bbclass:rootfs_ipk_do_rootfs() checks if any packages are in
> unpacked state and then will delete the packages directory in /var/lib
> if nothing there is needed. I could not find similar actions in
> rootfs_deb.bbclass or rootfs_rpm.bbclass
>
> I am thus planning on proceeding with my minimal image without setting
> ROOTFS_POSTPROCESS_COMMAND, but it seems that minimal images based on
> rpm and deb may need some changes to avoid surprises.
>
> Reinette
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

