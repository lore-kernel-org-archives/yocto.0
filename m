Return-Path: <prvs=11846d3d34=holzmayr@rsi-elektrotechnik.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 48EABE00D4E; Mon,  7 Oct 2019 22:12:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [85.215.255.21 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de
	[85.215.255.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC05FE00790
	for <yocto@yoctoproject.org>; Mon,  7 Oct 2019 22:12:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1570511555;
	s=strato-dkim-0002; d=rsi-elektrotechnik.de;
	h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:
	X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
	bh=gsjnvxUw8z3UJQZT9vEf98Qo4bXyySP1uWbdy4M1YYk=;
	b=ScSn5DeRMYFkqq61nIovk9Di7/4RI+UrfTrcL+/8K00HvL53YYL7DrVJd13hBfU+OW
	A+Aa5j5YoR+9fClO6zFMSbpJE45YimcIwiRMHB0Y3U4Ju2REBY/i3Q1sUNsJ7amPmDB+
	fo5LtqS2HMPKdK8LOWdaR8XJsaNTSMxu87Y+jNBuQBXAMPIuVCWC8EweVPN4XX2VSwqs
	9mV43WQTWV9KDVKkcv8Op9rvgTxNAbHNgpsWmdbREmCQFkmE3xV0u6AcVb8wQtcuLwt0
	fsNlX8ujIecNlhXPT5MbmsJOstvOtmjcgKKbtMMHKlJWIUlDCUMlul84m2kpK8A13/HG
	V1lQ==
X-RZG-AUTH: ":fz5RJhWIaexwuXGosGLfiBc0xYyi1Y5bd+wRKqrzPXw4V1/KqCOd+ZZzzoK8epFp9XQIUl6aPGQL"
X-RZG-CLASS-ID: mo00
Received: from mail.rsi-elektrotechnik.de
	by smtp.strato.de (RZmta 44.28.0 AUTH)
	with ESMTPSA id C00f82v985CZeAZ
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp384r1
	with 384 ECDH bits, eq. 7680 bits RSA))
	(Client did not present a certificate);
	Tue, 8 Oct 2019 07:12:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed;
	d=rsi-elektrotechnik.de; s=MDaemon; t=1570511554; x=1571116354;
	i=holzmayr@rsi-elektrotechnik.de; q=dns/txt; h=Date:From:To:Cc:
	Subject:Message-ID:References:MIME-Version:Content-Type:
	Content-Disposition:Content-Transfer-Encoding:In-Reply-To:
	User-Agent; bh=gsjnvxUw8z3UJQZT9vEf98Qo4bXyySP1uWbdy4M1YYk=; b=a
	2UAHHmc+xgZf6A/vqM51HB8tpo/HgBGLy9WYeT7uwu1X1PwM13g9VhyS4Wbx/LGR
	rirLeIROsniQCvyKXaTBL7bCvph5+WD50rXP4Gdix5xm7ZMo7iwVeAUljPfyMzVn
	bR2B4j7TrprsL0ZpBhYvExRSC9e3ZJeddGAHG8scTo=
Received: by mail.rsi-elektrotechnik.de (MDaemon PRO v19.0.3) with ESMTPSA id
	md50000205391.msg; Tue, 08 Oct 2019 07:12:33 +0200
X-MDArrival-Date: Tue, 08 Oct 2019 07:12:33 +0200
X-Authenticated-Sender: holzmayr@rsi-elektrotechnik.de
X-Return-Path: prvs=11846d3d34=holzmayr@rsi-elektrotechnik.de
X-Envelope-From: holzmayr@rsi-elektrotechnik.de
Date: Tue, 8 Oct 2019 07:12:31 +0200
From: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
To: Stefan Herbrechtsmeier <stefan@herbrechtsmeier.net>
Message-ID: <20191008051231.23lrbfs2r4h4hocj@jholzmayr.localdomain>
References: <1078346093.8578188.1570117048745.JavaMail.zimbra@savoirfairelinux.com>
	<51c5973e-2c1a-f212-f963-9a2b321f480d@herbrechtsmeier.net>
	<967547077.8619660.1570192633081.JavaMail.zimbra@savoirfairelinux.com>
	<3faffc0c-a573-0b8b-5915-2619262e7b6e@herbrechtsmeier.net>
	<302244287.8695117.1570450585150.JavaMail.zimbra@savoirfairelinux.com>
	<0c098656-2c99-c6b5-42b1-b0fbd6df5bf3@herbrechtsmeier.net>
MIME-Version: 1.0
In-Reply-To: <0c098656-2c99-c6b5-42b1-b0fbd6df5bf3@herbrechtsmeier.net>
User-Agent: NeoMutt/20180716
Cc: Yocto-mailing-list <yocto@yoctoproject.org>,
	Savoir-faire Linux Rennes <rennes@savoirfairelinux.com>
Subject: Re: [npm] duplicate code
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
X-List-Received-Date: Tue, 08 Oct 2019 05:12:40 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Mon, Oct 07, 2019 at 09:33:46PM +0200, Stefan Herbrechtsmeier wrote:
> Hi Jean-Marie,
> 
> Am 07.10.19 um 14:16 schrieb Jean-marie Lemetayer:
> > > I thought about your idea of using Yocto to manage NPM package dependencies and I ran into an issue. NPM projects can have multiple dependencies on a single package, and sometimes with multiple versions. NPM will manage this by creating sub 'node_modules' tree.
> > 
> > Here is an example with a newly created angular application. The app depends on 3 different version of 'ansi-regex'. NPM will install the packages this way:
> > node_modules/ansi-regex @ 2.1.1
> > node_modules/cliui/node_modules/ansi-regex @ 3.0.0
> > node_modules/inquirer/node_modules/ansi-regex @ 4.1.0
> > node_modules/string-width/node_modules/ansi-regex @ 3.0.0
> > node_modules/@angular/compiler-cli/node_modules/ansi-regex @ 4.1.0
> 
> I use symbolic links instead of folders, append the major version to the
> folder name and move the folders into the main node_modules folder. At the
> moment I use one version per major version or first version unequal to zero:
> 
> node_modules/ansi-regex-2
> node_modules/ansi-regex-3
> node_modules/ansi-regex-4
> node_modules/cliui-X/node_modules/ansi-regex -> ../../ansi-regex-3
> node_modules/inquirer-X/node_modules/ansi-regex -> ../../ansi-regex-3
> node_modules/string-width-X/node_modules/ansi-regex  -> ../../ansi-regex-3
> node_modules/@angular/compiler-cli-X/node_modules/ansi-regex  ->
> ../../../ansi-regex-4
> node_modules/abc-X/node_modules/ansi-regex -> ../../ansi-regex-2
> node_modules/abc-X/node_modules/cliui -> ../../cliui-X
> node_modules/abc-X/node_modules/inquirer -> ../../inquirer-X
> node_modules/abc-X/node_modules/string-width -> ../../string-width
> node_modules/abc-X/node_modules/@angular/compiler-cli ->
> ../../../@angular/compiler-cli-X
> 
> 
> > How can you handle that with Yocto ? I am not sure but I think it is not possible.
> It is possible and Yocto could do even more. If you take a look at the
> package ansi-regex you realize that the project increase the major version
> only because they change the minimum required nodejs version. This means you
> could replace all ansi-regex version by the last version, add some symbolic
> links to the ansi-regex package and provide all versions by the same
> package.

I think it would be dangerous to assume this holds true for other
packages too. In the semantic versioning world as npm packages expectexd
to behave - and nodejs itself certainly does! - a change in the major
version means a breaking change of some kind.

> 
> Regards
>   Stefan
> -- 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

-- 
———————————————
Josef Holzmayr
Software Developer Embedded Systems

Tel: +49 8444 9204-48
Fax: +49 8444 9204-50

R-S-I Elektrotechnik GmbH & Co. KG
Woelkestrasse 11
D-85301 Schweitenkirchen
www.rsi-elektrotechnik.de
———————————————
Amtsgericht Ingolstadt – GmbH: HRB 191328 – KG: HRA 170393
Geschäftsführer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg
Ust-IdNr: DE 128592548 

_____________________________________________________________
Amtsgericht Ingolstadt - GmbH: HRB 191328 - KG: HRA 170363
Geschäftsführer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg
USt-IdNr.: DE 128592548


