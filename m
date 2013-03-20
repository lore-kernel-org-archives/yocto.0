Return-Path: <ross.burton@intel.com>
Received: from mail-wg0-f43.google.com (mail-wg0-f43.google.com [74.125.82.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9BBA0E00740
	for <yocto@yoctoproject.org>; Wed, 20 Mar 2013 13:15:15 -0700 (PDT)
Received: by mail-wg0-f43.google.com with SMTP id e12so1715685wge.22
	for <yocto@yoctoproject.org>; Wed, 20 Mar 2013 13:15:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:date:from:to:cc:message-id:in-reply-to:references
	:subject:x-mailer:mime-version:content-type
	:content-transfer-encoding:content-disposition:x-gm-message-state;
	bh=2nzQoDOTEJicC88CAe+21Sm8fdcvPx01AttEnc14TvI=;
	b=JJJV+lsjLJeNXDTkC7hBrZdIYH6xd6xyu9D4tvqKMK1DSiAYv6XF3/xN7vuEqsVepR
	NQ9yhuLTfBpN/fTuFDBZ9kvzdO0Yg6Skpk5xKBowKven+9b5E1E+Qa4gc62Dn4jdypgY
	RRha1KJBo/JoxRBr2Nu1cy7aH6ujpvq8k1WfsTkMF7XnndimeaBp6rE+DaoJZ8p+4/jJ
	Dh5gS/Q0wk6ghr4dEQE2w9fY5jeWyhaHyBFtjaDfdibeZM9phbElrjdkOYekoRDxWqfG
	ELpW8l1rOpHBxl5dtwGVkHs1G2gag2LiYclRTw4YuYOqxOfPABQjcASrzJV7ZXuhsd8c
	VSFQ==
X-Received: by 10.194.92.65 with SMTP id ck1mr12922793wjb.54.1363810514308;
	Wed, 20 Mar 2013 13:15:14 -0700 (PDT)
Received: from [192.168.1.11] (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPS id g4sm885958wib.11.2013.03.20.13.15.12
	(version=TLSv1 cipher=RC4-SHA bits=128/128);
	Wed, 20 Mar 2013 13:15:13 -0700 (PDT)
Date: Wed, 20 Mar 2013 20:15:49 +0000
From: Ross Burton <ross.burton@intel.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
Message-ID: <F6460DFEAC8C415FAFCF7A16B0499DA6@intel.com>
In-Reply-To: <9331786F4D074BCCAB63AE3E10152262@PAULD>
References: <F1069DB4DED5494AA1DC65CB388B29EA@PAULD>
	<CAJTo0LYzZvQZ1CvXGtO2Sj8nLrzPgtb8M61gRwz+Y_p_HhPuYw@mail.gmail.com>
	<3C8645632D634EAC903E8930B57F4777@PAULD>
	<CAJTo0La0yxkJ4bJsBbji1rCg6ea9fwGiR_q0vH+f032BHNYTTA@mail.gmail.com>
	<56C806C0B65D44ADA7D6314F4051E91E@PAULD>
	<CAJTo0LY3edhzsbOrPzw6FEDUW58Rc_RjQdamGTPdjCar6gBN1g@mail.gmail.com>
	<603BDC00C3D14F51BF551A28572660E3@PAULD>
	<CAJTo0LZBRFHubPhCBZg8cko+TiZY3xz7YDJU-fzg0sgRFAhw2g@mail.gmail.com>
	<B85484ED80754E0D8F82ECCA688762AF@PAULD>
	<CAJTo0LaOU=ak5awePdFdW2sCB=N1CsbiLMaQgF6Gzt5gFWuNSw@mail.gmail.com>
	<9331786F4D074BCCAB63AE3E10152262@PAULD>
X-Mailer: sparrow 1.6.4 (build 1178)
MIME-Version: 1.0
X-Gm-Message-State: ALoCoQlV54axayKDpSWQugZG4K7bP5n9a32gnJgNneoAjWDoejGMBssELM9fZUwrVsXGgp7TczhC
Cc: yocto@yoctoproject.org
Subject: Re: Can't find guile-2.0
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
X-List-Received-Date: Wed, 20 Mar 2013 20:15:16 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

On Wednesday, 20 March 2013 at 20:06, Paul D. DeRocco wrote:
> > From: Burton, Ross
> > 
> > Okay, try doing "bitbake -c devshell autogen-native", and then running
> > "pkg-config --cflags --libs guile-2.0". That should produce errors,
> > which may be more useful. Debugging over email is quite difficult. :(
> 
> It complains that guile-2.0 is not found in the pkg-config search path, and
> suggests adding the directory containing guile-2.0.pc to PKG_CONFIG_PATH.
> This variable contains two directories within my build directory:
> 
> tmp/sysroots/i686-linux/usr/lib/pkgconfig
> tmp/sysroots/i686-linux/usr/share/pkgconfig
> 
> The first directory contains guile-1.8.pc, not guile-2.0.pc.
Okaaaay.  So what version of oe-core or poky are you using that is providing the guile-native?  Having autogen-native r3 implies some revision of master post-danny, as danny (1.3) only has autogen-native r2. Either way, both Danny and master have guile-native 2.0.6.

What are you exact layers and versions?  I'm not understanding why you're not getting the guile-native that must be present alongside your autogen-native (as I fixed guile and then fixed autogen in the same day).

Ross

