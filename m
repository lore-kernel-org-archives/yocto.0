Return-Path: <ross.burton@intel.com>
Received: from mail-we0-f173.google.com (mail-we0-f173.google.com
	[74.125.82.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 003F7E00740
	for <yocto@yoctoproject.org>; Wed, 20 Mar 2013 13:55:19 -0700 (PDT)
Received: by mail-we0-f173.google.com with SMTP id x51so1732407wey.4
	for <yocto@yoctoproject.org>; Wed, 20 Mar 2013 13:55:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:date:from:to:cc:message-id:in-reply-to:references
	:subject:x-mailer:mime-version:content-type
	:content-transfer-encoding:content-disposition:x-gm-message-state;
	bh=I7zg9NitcAE07M6HZoW0KpcuVzPBIQbZZgTKDzGTh0c=;
	b=m/LVF6ZzJgJOLQuUmaj3FR0IcMRlYGlStO49XY1ORXVLxIc1MeQjno4LmdURKZn87o
	eJ1w/Y97uY3aYINU8q0QIBCzFm+5wthJf6IPhKT29M1whRtJJYKIEbEx3P5SOt8KgcOL
	T83o3QLMu0m9QV0VOs8NNZH5VDWmvnoEP0t/Zoas/pDdW+9WQNoBvaJc+uDQMm2rmnE+
	L9UYWlc8iq9V+cDbKSLI3TiCEvfpphnFwN5EsBDJDjtZtwLzpX4IcQPwU4bCeqDjeXSa
	IIjSRuShr9zActqhFCLKrnMG5pueRMIYS/SosSdu41WLtJg5ct9IFsycZSJffjmUzc5A
	HnIA==
X-Received: by 10.194.242.163 with SMTP id wr3mr13041568wjc.35.1363812918751; 
	Wed, 20 Mar 2013 13:55:18 -0700 (PDT)
Received: from [192.168.1.11] (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPS id q13sm5285729wie.0.2013.03.20.13.55.16
	(version=TLSv1 cipher=RC4-SHA bits=128/128);
	Wed, 20 Mar 2013 13:55:17 -0700 (PDT)
Date: Wed, 20 Mar 2013 20:55:53 +0000
From: Ross Burton <ross.burton@intel.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
Message-ID: <DAD15C33EB5B4620BF57DF4816FC3C4B@intel.com>
In-Reply-To: <439A53A3DAF743BEA77A6820E8B9641E@PAULD>
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
	<F6460DFEAC8C415FAFCF7A16B0499DA6@intel.com>
	<207F72914E4C4014A2C1124BBADDD244@PAULD>
	<D6081CD6470747D1803B8A19E552149F@intel.com>
	<439A53A3DAF743BEA77A6820E8B9641E@PAULD>
X-Mailer: sparrow 1.6.4 (build 1178)
MIME-Version: 1.0
X-Gm-Message-State: ALoCoQnbm9jY3f3jwDySbwlD3bZiQEyJYVSAizzaaLTf1seiYwjIwQEAVlybWlKGery10vqtRu+C
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
X-List-Received-Date: Wed, 20 Mar 2013 20:55:20 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

On Wednesday, 20 March 2013 at 20:45, Paul D. DeRocco wrote:
> Okay, here goes...
> 
> I'll let you know how it comes out, some time tomorrow. I'm compiling it on
> my lowly D2700. ;-)

Oh my! 

If you wiped tmp/ but left sstate/, it shouldn't take that long.

Ross

