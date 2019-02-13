Return-Path: <prvs=194798e60c=holzmayr@rsi-elektrotechnik.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EB4DDE0097C; Wed, 13 Feb 2019 00:31:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [85.215.255.54 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 203 seconds by postgrey-1.32 at yocto-www;
	Wed, 13 Feb 2019 00:31:22 PST
Received: from mo4-p01-ob.smtp.rzone.de (mo4-p01-ob.smtp.rzone.de
	[85.215.255.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BCB6AE0053F
	for <yocto@yoctoproject.org>; Wed, 13 Feb 2019 00:31:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1550046681;
	s=strato-dkim-0002; d=rsi-elektrotechnik.de;
	h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:
	X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
	bh=O3tJK9dYX6xGiQLWDpOtf90aDCyduhY8PVTDSYmRs/U=;
	b=ceAIrmVAoeGY1LHOoKarA/qZ7rHq6/3aFDcf1JhnKGXcCTo1aMicrK8KOxg7bymLtB
	V2nIBLocSnv1KatzpYtc5J18+IJJ6QQxusAmCtqubm8qk3ccQe54T0FqDp4/9p9vP9oq
	ZSKxhmlsWiO1kKaOTS45pCQItdCdipjqn0qT73zpS9YGzh1xB5eetDaRrixn55XGsMJ9
	bxCwJDUwI9zZNNfEbjLipXLkkCptJsxibmmzFl6750HH20aPJAdzN4J+RWly3X/w5lUs
	TWr966qfpjymE0qZH8+vMdRokqw0KcWcs+5O5Cknrg4CnzjLiUAwjOKenYMJFF9aWO41
	/+Jw==
X-RZG-AUTH: ":fz5RJhWIaexwuXGosGLfiBc0xYyi1Y5bd+wRKqrzPXw4V1/Kpz6b/avroGOv0c9sak1tqOWjLU3UFhR6"
X-RZG-CLASS-ID: mo00
Received: from mail.rsi-elektrotechnik.de by smtp.strato.de (RZmta 44.9 AUTH)
	with ESMTPSA id w00aa1v1D8RvTVi
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp384r1
	with 384 ECDH bits, eq. 7680 bits RSA))
	(Client did not present a certificate);
	Wed, 13 Feb 2019 09:27:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed;
	d=rsi-elektrotechnik.de; s=MDaemon; t=1550046479; x=1550651279;
	i=holzmayr@rsi-elektrotechnik.de; q=dns/txt; h=Date:From:To:Cc:
	Subject:Message-ID:References:MIME-Version:Content-Type:
	Content-Disposition:Content-Transfer-Encoding:In-Reply-To:
	User-Agent; bh=O3tJK9dYX6xGiQLWDpOtf90aDCyduhY8PVTDSYmRs/U=; b=u
	5WsUdRzk2Abx5uy7WXks445FQYOUokAr+6/SjnZWQuCl5hS+lwPlFNiuhvdvv9Zs
	e/G2zv4AG2qxYsCSZRBHfiAwT7Y/3+6mPwU4wk+bpwSSJW+OpootHqx2zrg3q9ux
	iWsBDqtUOFIdZHMF98nedcXF4rZJZRptIYLrAHBCyI=
Received: by mail.rsi-elektrotechnik.de (MDaemon PRO v18.5.1) with ESMTPSA id
	md50000140585.msg; Wed, 13 Feb 2019 09:27:58 +0100
X-MDArrival-Date: Wed, 13 Feb 2019 09:27:58 +0100
X-Authenticated-Sender: holzmayr@rsi-elektrotechnik.de
X-Return-Path: prvs=194798e60c=holzmayr@rsi-elektrotechnik.de
X-Envelope-From: holzmayr@rsi-elektrotechnik.de
X-CAV-Result: skipped - holzmayr@rsi-elektrotechnik.de is in exclusion list
Date: Wed, 13 Feb 2019 09:27:54 +0100
From: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
To: Bhupendra Singh <bhupendra.singh@ppsinternational.in>
Message-ID: <20190213082754.qag2l75enbisbc4e@jholzmayr.localdomain>
References: <000001d4c36c$b99aef10$2cd0cd30$@singh@ppsinternational.in>
MIME-Version: 1.0
In-Reply-To: <000001d4c36c$b99aef10$2cd0cd30$@singh@ppsinternational.in>
User-Agent: NeoMutt/20180716
Cc: yocto@yoctoproject.org
Subject: Re: Make one directory writeable
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
X-List-Received-Date: Wed, 13 Feb 2019 08:31:25 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Hi Bhupendra,

On Wed, Feb 13, 2019 at 12:51:17PM +0530, Bhupendra Singh wrote:
> Hello 
> 
> I have built core-image-minimal  with read only rootfs  then now  I want to
> make one directory (like /mnt) writable. 
> 
> Is it possible to make one directory writeable in read only rootfs if yes
> ,please tell me how can I do same.   

This is not exactly yocto specific, general linux concepts apply. You
can use a secondary, tertiary, ... partition or starage device and then
mount that as read-write. But it always has to be a seperate filesystem.
There is no way to make only one path of a given filesystem RW, it
always means that the whole filesystem is writeable.

Greetz
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


