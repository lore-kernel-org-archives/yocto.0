Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F3275E00799; Wed, 15 Oct 2014 08:32:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.47 listed in list.dnswl.org]
Received: from mail-qg0-f47.google.com (mail-qg0-f47.google.com
	[209.85.192.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98EE3E006EF
	for <yocto@yoctoproject.org>; Wed, 15 Oct 2014 08:32:16 -0700 (PDT)
Received: by mail-qg0-f47.google.com with SMTP id i50so1072747qgf.34
	for <yocto@yoctoproject.org>; Wed, 15 Oct 2014 08:32:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=p41qwdsKouVbnDygjmjxMh/7FaEjYzZ2EVmEiTb4GwM=;
	b=mydn7na/cTdnWotZ639kWhBHNdDCzKW7ze63t4Hr6mo6IcEj3MPNTqoDTkM5t3/f0F
	gSBH5XaX3dRDMGshFQsFO5fGuCOCP8TFo0tfd8IvRw7imTruQKeX+9jotkCTVKKAdrDV
	Qugb75Djqxxz7tUKcnfkopkBi08mSQoD+/DpI3eDFbY6AJhWO4oWe1GW/o35JRNEW/rz
	o9/XKO9p3p85me1NBAPs0iqraHPpkMswnyvRsFVBkvTQxonTEDfl8yyMKGylSOldkHG8
	1Q2sZK6eNgBmzX94I+QpF2fjY/a4zQ+aJorVRBYFN1el3OxyFzQif09sMSF+QQbx9pby
	xWIw==
X-Gm-Message-State: ALoCoQmVkYA8fwm769BstElMnMu2ilPgDeF3rFSew6EqTQibQRXsibzScxU+e9N9F2TER5/U6GTb
X-Received: by 10.229.37.138 with SMTP id x10mr21843593qcd.5.1413387135652;
	Wed, 15 Oct 2014 08:32:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.93.65 with HTTP; Wed, 15 Oct 2014 08:31:55 -0700 (PDT)
In-Reply-To: <CAJTo0La=7QNS53qZDgShj+9yr6Ge0hyk9HFAdS+Ue0bZAkck4A@mail.gmail.com>
References: <3230301C09DEF9499B442BBE162C5E482576880D@SESTOEX04.enea.se>
	<CAJTo0La=7QNS53qZDgShj+9yr6Ge0hyk9HFAdS+Ue0bZAkck4A@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 15 Oct 2014 16:31:55 +0100
Message-ID: <CAJTo0La9iMQ4ZiSuTFo35271c2McpzkSvugOEqL6dBNoncdkZQ@mail.gmail.com>
To: Sona Sarmadi <sona.sarmadi@enea.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"openembedded-core@lists.openembedded.org"
	<openembedded-core@lists.openembedded.org>
Subject: Re: Truly scary SSL 3.0 vuln to be revealed soon:
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
X-List-Received-Date: Wed, 15 Oct 2014 15:32:20 -0000
Content-Type: text/plain; charset=UTF-8

On 15 October 2014 11:07, Burton, Ross <ross.burton@intel.com> wrote:
> Presumably the list of affected packages is:
> - gnutls
> - openssl
> - nss

There's a openssl 1.0.1j out now (fixing FOUR (!) CVEs, including
"disabling SSLv3 didn't work"...).  I think considering the situation
we'd take the upgrade for dizzy, even though we've frozen.  Anyone
volunteering to take lead of upgrading dizzy to 1.0.1j and backporting
the relevant patches to the previous releases? (eg daisy is on
1.0.1g).

Ross

