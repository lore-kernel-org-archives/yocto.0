Return-Path: <alan.martinovic@senic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2214AE00D88; Sun,  7 Jan 2018 01:33:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.215.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f43.google.com (mail-lf0-f43.google.com
	[209.85.215.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 027EDE00BCE
	for <yocto@yoctoproject.org>; Sun,  7 Jan 2018 01:33:45 -0800 (PST)
Received: by mail-lf0-f43.google.com with SMTP id f3so9241490lfe.4
	for <yocto@yoctoproject.org>; Sun, 07 Jan 2018 01:33:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=senic-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=NErxtLteUYNJV/00Tu62o2Fw6phu6ck7vccnP00HaeA=;
	b=wvrv6kROTVVEANYTXb2Xwvgea96peSyrDNchP838ijnP7JWUfjneL7K0BiT9exWoZ9
	pTUjt5CsBFAqmJHcV3K5ECsqmu1Fsj2gxtBjV/fpmFa3UOtEam2kg7QJUQgAgBox5NM9
	TcOH7lt98vU2L7kmb4tYeui0JtYou5zFnxhuRh/cO7JjoB34myC/bvv2ygerDA6ESo3U
	neBk1luLvpOMufjp89Crwt6hwxSGXdjmGvAHFrQ/WQsZIixlcZrpIUQenojEx4MzPEIr
	PDmsHRBDsZjCQBRMF95QQgktggtQupwnKE0w+jaEdAVVSlgHK9Y7X0pnDEAfSmw7YnH7
	bbyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=NErxtLteUYNJV/00Tu62o2Fw6phu6ck7vccnP00HaeA=;
	b=TSnq/b4qKucX/JXVNBVd/T8OnedfBSPn4lUtYS8P6MQHo0TzLNAq1IbUVDSiR6RqMP
	3287xfmBGNhwlYUAdBduw44qlnGCu4hgu67gsNA2lzXxaN6KmgzIn59iiT8o9kAWlzbH
	XNRPDMF4MakDuEJdMWtaUv6T/1V6zANqSJoHVZtu9V9+UpG1E/Mmhmh9CKplhbwM7kQ0
	t6t7XKSBN5iL2tw0tVue1ovIxYPXXuhigZfS/fDpmFt94C6hgAV//L/2r6CL41zHEwOv
	5CrsR28tc0eIfUFzfSNZcGllJxPkKhMIK3e2Uiy8Gpei6tHFQpTE1zAJOv5mSrm1Ds5/
	9aeA==
X-Gm-Message-State: AKwxytf+yAXn/SOkVGLuEh7S//1yGqROkIiGiL2/nL/ClJPSC2+2G5pl
	fBEHt2BDvawXksHwA6C7qcV3O0VYAynjFNwnyrUTZQ==
X-Google-Smtp-Source: ACJfBoscl3V4l8sVeGTgJAp8uRBaM5ug0fpdreoH6HVeskdegYPraO2N17nsFbN1ZJZpbW0cLDprwpYrFhDlXo+Ri9o=
X-Received: by 10.25.162.142 with SMTP id l136mr4085411lfe.43.1515317624515;
	Sun, 07 Jan 2018 01:33:44 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.87.193 with HTTP; Sun, 7 Jan 2018 01:33:44 -0800 (PST)
In-Reply-To: <63A4BEEE-D99F-4B1F-A18F-9D5085B4917E@telspandata.com>
References: <CY1PR0401MB1340EE57B6571F238B64B7DFB01C0@CY1PR0401MB1340.namprd04.prod.outlook.com>
	<51e6ac82-e6f3-2bc4-8758-ac1c0fdcaacf@linux.intel.com>
	<63A4BEEE-D99F-4B1F-A18F-9D5085B4917E@telspandata.com>
From: Alan Martinovic <alan.martinovic@senic.com>
Date: Sun, 7 Jan 2018 10:33:44 +0100
Message-ID: <CAOT_U5bbi_3VN4SRqHnbuMEqwkF4t5XLLu1aUDPn8NSpBNt0iA@mail.gmail.com>
To: Matt Schepers <mschepers@telspandata.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: rdepends = "python3-modules" in recipe does not install python3-modules in image
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
X-List-Received-Date: Sun, 07 Jan 2018 09:33:47 -0000
Content-Type: text/plain; charset="UTF-8"

You can try
    bitbake users -e | grep PN
or
   bitbake users -e | vim -

and then search for PN inside vim

On Sat, Jan 6, 2018 at 7:00 PM, Matt Schepers <mschepers@telspandata.com> wrote:
> How do I check what PN is set to? I can see users-dbg.rpm and users-doc.rpm
> in the rpm folder. The recipe name is users.bb
>
>
> Thanks,
> Matt
>
> On Jan 5, 2018, at 11:38 AM, Alexander Kanavin
> <alexander.kanavin@linux.intel.com> wrote:
>
> On 01/05/2018 06:41 PM, Matt Schepers wrote:
>
> This does not install "python3-modules" to the image. When this builds, my
> python program does not work because of missing dependencies on the standard
> library.
>
> To get this to work I have to go in and append "python3-modules" to
> IMAGE_INSTALL in my top level image recipe.
>
> I thought that the purpose RDEPENDS was to install the correct runtime
> dependencies to the image? Why doesn't this work?
>
>
> Probably because the binary package is called something else than PN?
>
> Alex
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

