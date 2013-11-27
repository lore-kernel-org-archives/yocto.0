Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vb0-f43.google.com (mail-vb0-f43.google.com
	[209.85.212.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED840E0078B
	for <yocto@yoctoproject.org>; Wed, 27 Nov 2013 09:32:01 -0800 (PST)
Received: by mail-vb0-f43.google.com with SMTP id q12so5030066vbe.2
	for <yocto@yoctoproject.org>; Wed, 27 Nov 2013 09:32:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=AYc/pb7eHdB7dxhZZNHJc2Z52tzt3uAqZq6gYfkZUYg=;
	b=hsEOV2iy1tN1uTdsnMNsQY7s66TAxSqLhnBEJ4tL6dpcrnypf3EoHVVE5EFLQ91xk7
	NUPzP42+MJ4+lg9GbQvn28A4fHyB1DlFUEBhnWD1VV+3x0x+ga6lz9iNVtXHTgHEmPo8
	ez06j6BUTyWveW9Sm5YsMJQKWWpZcaTuIpbdp6Hdeof27P1k2miPeO8AJXaiHu916IzY
	iK+eLWWCe1UgCPEVZtPdU4cAYHpMwPjS1Egb/amC3lICVhcSwPWq8LqHgcwalEFJu2Mg
	qxViI12e1/ruGTxjmkLJ4IBc74ixaHlGdbRMZU3IZaMM5MvT35ftb7ito50CKzTbBWm3
	wpVg==
X-Gm-Message-State: ALoCoQmdHENpQ3BQZOZ+yaxhcyFmtgBJ8BWrSNJexFtoLrYF4Uf5k06Zd4Pko3b/CakhpTt2uLUR
MIME-Version: 1.0
X-Received: by 10.220.199.5 with SMTP id eq5mr35331500vcb.16.1385573520804;
	Wed, 27 Nov 2013 09:32:00 -0800 (PST)
Received: by 10.52.161.7 with HTTP; Wed, 27 Nov 2013 09:32:00 -0800 (PST)
In-Reply-To: <1FFB62CE8AEB0D4298B51122D8903E9619FA6E63@IRSMSX104.ger.corp.intel.com>
References: <CAPhnLPBfePCSFK8ptNDRh8vT2_4LdSzYU4vNfcB0ZiPCz92R_g@mail.gmail.com>
	<CAPhnLPBL+cPmGKpdEJmBmNbZAV-phRcNVqtuyDGc2yTKB3S1HA@mail.gmail.com>
	<1FFB62CE8AEB0D4298B51122D8903E9619FA6E63@IRSMSX104.ger.corp.intel.com>
Date: Wed, 27 Nov 2013 17:32:00 +0000
Message-ID: <CAPhnLPDOdEzUHznKdu_Wo+6JFRDQHapeuFCVdcXX8Vc5Tfe7Tg@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "Georgescu, Alexandru C" <alexandru.c.georgescu@intel.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: FW: Weekly Build Available
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
X-List-Received-Date: Wed, 27 Nov 2013 17:32:05 -0000
Content-Type: text/plain; charset=ISO-8859-1

Folks,

We're respinning right now. The new build will be available in a few hours at:

http://autobuilder.yoctoproject.org/pub/nightly/20131127-3

bitbake     347b2ead091f00ee60703f6f3d17cfdd9075ac07
eclipse-poky-juno     e8342d27db60a9d1b627ddb9f8ae2f5512bfc0c9
eclipse-poky-kepler     3dd620d9f89e297ee9e22d5ba9fe741a5f40ac82
meta-fsl-arm     987115d6d099a5e87d9d5b3c4e6567a5e6309fd0
meta-fsl-ppc     768c6ef13546e0f977847bc1fbb5957571fbf724
meta-intel     a649e92498d234f2d0d52f3da5a85bdc87296c23
meta-minnow     91cff9475081a5625c1c0bb49c17c6f3130ec503
meta-qt3     b73552fb998fd30a01dbee5a172e432a16078222
oecore     f991d2d60b74f5ebd990f77aecd3324b1a4533e9
poky     32adaac34a614d106e6dd3e9f1130f4e94ff39ae

