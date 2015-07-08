Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D3591E009C5; Tue,  7 Jul 2015 17:53:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f42.google.com (mail-oi0-f42.google.com
	[209.85.218.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75B80E00957
	for <yocto@yoctoproject.org>; Tue,  7 Jul 2015 17:53:48 -0700 (PDT)
Received: by oihr66 with SMTP id r66so98846242oih.2
	for <yocto@yoctoproject.org>; Tue, 07 Jul 2015 17:53:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=8sgmOoLVKqluJXaW7+dtEKnwhkNcix3HLzxKTve2vvk=;
	b=fopQLXNEDOxWs4gPQl/CUZuRtwgm0B7oete0h+ugX8d37BgtTUtNrdI+YuXHSBvVXF
	U5AF1Derv3KbzN7vDbiTiZkoQ9FDd/WRT0k9BM31YFU2Q/RV+QmoUfZt+2To6gPb77dM
	0pdoQXWJpo/8SyokQ/wX9VfnDxA9RGJHuka/4ESoq4qWt1wS4TSoZ23VK0g/K5j/UvvY
	uvdjzzeI39ngcGG/GfBkFFRe++DoJssffFUPol5Y4u7zL/EOj+/CuEd+e2WRd+EJVUmd
	32/X8IcR2V5uUI4AvQqHuHnzpGE/UmbfP9lUGSObVNcHjTRv2x5dFkVguS3KUuE6yZtS
	6ZxA==
MIME-Version: 1.0
X-Received: by 10.202.217.68 with SMTP id q65mr6071689oig.17.1436316827354;
	Tue, 07 Jul 2015 17:53:47 -0700 (PDT)
Received: by 10.202.64.130 with HTTP; Tue, 7 Jul 2015 17:53:47 -0700 (PDT)
In-Reply-To: <0a834e96761d47fe91dc52870a8906f8@MCCRENEX02.meteorcomm.lan>
References: <0a834e96761d47fe91dc52870a8906f8@MCCRENEX02.meteorcomm.lan>
Date: Tue, 7 Jul 2015 17:53:47 -0700
Message-ID: <CAJ86T=UQ1wmWiSJmhSzS97Z5y5bDFqhX0Bv5e38Q2jRf2bLSww@mail.gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
To: Benjamin Fleming <bfleming@meteorcomm.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: populate_sdk and kernel headers
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
X-List-Received-Date: Wed, 08 Jul 2015 00:53:49 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 7, 2015 at 4:16 PM, Benjamin Fleming
<bfleming@meteorcomm.com> wrote:
> Hello,
> I want my kernel headers to be included in the SDK output when I run bitb=
ake myimage -c populate_sdk. I expect to see the headers in my installed SD=
K folder such as <sdk>/sysroot/<target_mach>/usr/src/kernel; however, I don=
't see anything there. Also, I don't want the headers appearing on the targ=
et.
>
> In my recipe I have added IMAGE_INSTALL +=3D kernel-modules, and SDKIMAGE=
_FEATURES +=3D kernel-devsrc.  The kernel I'm using is linux-altera-ltsi-rt=
 from https://github.com/kraj/meta-altera/blob/master/recipes-kernel/linux/=
linux-altera-ltsi-rt_3.10.bb
> What am I missing?

Try adding kernel-devsrc to IMAGE_INSTALL rather than SDKIMAGE_FEATURES.

> Thanks,
>
> Ben
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

