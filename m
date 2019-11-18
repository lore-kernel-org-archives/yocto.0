Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0B6AFE00875; Mon, 18 Nov 2019 10:03:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.172 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-il1-f172.google.com (mail-il1-f172.google.com
	[209.85.166.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB1FCE007E1
	for <yocto@yoctoproject.org>; Mon, 18 Nov 2019 10:03:26 -0800 (PST)
Received: by mail-il1-f172.google.com with SMTP id q1so16836161ile.13
	for <yocto@yoctoproject.org>; Mon, 18 Nov 2019 10:03:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=RhCY32s7F0VqmYsTpHG97GAbK+57P7fPXVaj3dTIzUs=;
	b=Z8Kv5EJomkdf9PBjL+a4fOOiwwX5n6OP+BjaaFWXiOItiiWEBGWVQyIW2PFLYUFRiC
	iZvPc8ZQUkaubqHLPsNbX5aXPoKlhDvzLoemVDBYJRZXJrQUc321/OopuOduMJ1FoLxv
	q2ftKsbvu2XbwIO4M5Jsc0ub80nCRWI65KBRLbAPGRK0fGx9bE3bWLuTDmNpkDWBrn75
	n9OxRUZxVVkswMb28kTDApKCZa0dcWsxP60hZ2mAKlTb4W5dRIYN8zmDaGtnLnWhsInB
	k8+yZZMcIDWpy84cmaZrYU6X/0BtNqWGzW7FGAGx4ojwoaf42zSG2nzMLmAzf5/Ms+uG
	qPzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=RhCY32s7F0VqmYsTpHG97GAbK+57P7fPXVaj3dTIzUs=;
	b=PVN60MvGaT3X1yDTR4cbRBLqiFBoRy/ZEM0XzWOImpMAqQM7eBfVym7yxJGuY2BPL9
	Ogmqby4YtHJIATgqfUk1YEUVJoclo+qRcQQ64IIqajQFeh6rsMXbldhwR+mbpSdoXFk2
	jZmNpmk6pIKTz+aOaCQrc+UhgrxdGZNcGCbrAsQhdmqnzwEWlTR3UoHO4Ic4NHC6z9bB
	abSKwvVZdlnVU4D8FlN2eKN79Yyo6jT7ENCccqx/Ft2dNc7SzDhhEmB+Hd1VlsRaEfPn
	Pb1RR4B+Fa+7VQ/RT+jIgsZuqkbHn9kO0j3zb9+gFKjIkCLR9cusKlX1QfniVNTWbxJi
	gvWA==
X-Gm-Message-State: APjAAAUq5xFaECqUqmhsl1+5sdXN5I/4T99l5WuEPsCQLbGbT/eO/T0r
	K1Mw89wZPk30gX84Tpr9Ke9/ZWYWwfpircnGTtU=
X-Google-Smtp-Source: APXvYqywcsi4zqGgww6QdGyeH9mb6xEoROlgcmgSJmFS3RxfKmqt7nB/OX63sU0pWfnEPom8ecbMfOEp6+E1MdQ44KY=
X-Received: by 2002:a92:d746:: with SMTP id e6mr17359688ilq.111.1574100205654; 
	Mon, 18 Nov 2019 10:03:25 -0800 (PST)
MIME-Version: 1.0
References: <20191030172230.71E0F860286@debian10-ty-2.yocto.io>
	<BN7PR11MB272124A3092ACFC1752456D1C8630@BN7PR11MB2721.namprd11.prod.outlook.com>
	<CY4PR11MB1879BE6554D6A371F80439F3E34D0@CY4PR11MB1879.namprd11.prod.outlook.com>
In-Reply-To: <CY4PR11MB1879BE6554D6A371F80439F3E34D0@CY4PR11MB1879.namprd11.prod.outlook.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 18 Nov 2019 10:02:59 -0800
Message-ID: <CAMKF1sqxhgxrvTsCdDF4qcsTUL8yLi0PMK+ATTyrJ3ChMiyCnw@mail.gmail.com>
To: "Jain, Sangeeta" <sangeeta.jain@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"akuster808@gmail.com" <akuster808@gmail.com>, "Chan,
	Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>,
	"otavio@ossystems.com.br" <otavio@ossystems.com.br>
Subject: Re: QA notification for completed autobuilder build (yocto-2.7.2.rc1)
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
X-List-Received-Date: Mon, 18 Nov 2019 18:03:28 -0000
Content-Type: text/plain; charset="UTF-8"

looks good to me.

On Sun, Nov 17, 2019 at 11:00 PM Jain, Sangeeta <sangeeta.jain@intel.com> wrote:
>
> Hello all,
>
> This is the full report for 2.7.2 RC1:
> https://git.yoctoproject.org/cgit/cgit.cgi/yocto-testresults-contrib/tree/?h=intel-yocto-testresults
>
> ======= Summary ========
> No high milestone defects.
> No new defect found in this cycle.
>
>
> Thanks & Regards,
> Sangeeta Jain
>
> >-----Original Message-----
> >From: Pokybuild User <pokybuild@debian10-ty-2.yocto.io>
> >Sent: Thursday, October 31, 2019 1:23 AM
> >To: yocto@yoctoproject.org
> >Cc: otavio@ossystems.com.br; yi.zhao@windriver.com; Sangal, Apoorv
> ><apoorv.sangal@intel.com>; Yeoh, Ee Peng <ee.peng.yeoh@intel.com>; Chan,
> >Aaron Chun Yew <aaron.chun.yew.chan@intel.com>; Ang, Chin Huat
> ><chin.huat.ang@intel.com>; richard.purdie@linuxfoundation.org;
> >akuster808@gmail.com; sjolley.yp.pm@gmail.com; Jain, Sangeeta
> ><sangeeta.jain@intel.com>
> >Subject: QA notification for completed autobuilder build (yocto-2.7.2.rc1)
> >
> >
> >A build flagged for QA (yocto-2.7.2.rc1) was completed on the autobuilder and is
> >available at:
> >
> >
> >    https://autobuilder.yocto.io/pub/releases/yocto-2.7.2.rc1
> >
> >
> >Build hash information:
> >
> >bitbake: 75d6648f232a06b99c54a1e33324a7fc1cd15b38
> >meta-gplv2: d5d9fc9a4bbd365d6cd6fe4d6a8558f7115c17da
> >meta-intel: ca26bed652722167b2dbe0042cfc2406029e9c6c
> >meta-mingw: 10695afe8cd406844e0d0dd868c11677e07557d4
> >oecore: 726c3b92298981f5aa2f2449ceeec7b4bf84ed29
> >poky: d0f73121551dc98f6924cd77952bf9ebf5ef3dd7
> >
> >
> >
> >This is an automated message from the Yocto Project Autobuilder
> >Git: git://git.yoctoproject.org/yocto-autobuilder2
> >Email: richard.purdie@linuxfoundation.org
> >
> >
> >
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

