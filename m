Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E0929E00ED6; Tue,  6 Mar 2018 15:04:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f45.google.com (mail-wm0-f45.google.com [74.125.82.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70646E00823
	for <yocto@yoctoproject.org>; Tue,  6 Mar 2018 15:04:42 -0800 (PST)
Received: by mail-wm0-f45.google.com with SMTP id 139so1253248wmn.2
	for <yocto@yoctoproject.org>; Tue, 06 Mar 2018 15:04:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=jnNqD/S3KMAe2D2fklz9xNA6C5E+afTeLmv+8G9lb7Q=;
	b=mgCMCetm8W1a+Wc62/d9mInZTtu7qqZRYz5JrKunKIBjUY9dq0sL8uiHt99G3Z9DDo
	jAqRu2XKpWtvTiRRglMaM4DRFgYvDjfjOkXFrbhlBSWxcW4FfuPI3mig/075Zull1VX/
	E9pDaIs8QeYWtNB9kW+xkklWw9OugrreJZ/Bvbqo7Xv3xuw7dUYtJPVTa9yWUC2WCRsN
	NAAGw2R+dygciKgOKEi8yYGBXhags8AghSp2xbxPl+6D7LtM/RFU1rFsJYsW2Y7HVyru
	zy1CNNL1FGpQVPYX3oMOOMatO3RtgAmNH9PJZVQaez6EML5eBtzpL40afwlMNu+eHJvk
	poCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=jnNqD/S3KMAe2D2fklz9xNA6C5E+afTeLmv+8G9lb7Q=;
	b=jDHnnLUunVvi5IkyC4FGKqCl88YXIVGEKntZpmee82XiR6EdIdf89UM4BUd+N6nhKk
	OfcW1fJFOWQ6Klz/n3BbQWnL2fKDb03EKfYb9FyIq4qdIwWPa3gwUJV3+NNfi+35iQUg
	D0WnQFTeginhlr/iPsj/qE9VhjPWFLe7T1tZZe0VcCLja431wGlrVU0fFOXEV6RTNyJB
	+kYanKjZzsDsSvVOpFtoj1TjKOrVgfZJb9o806Unb4UgVQPZB6H2lko3ethbfIx6KKQd
	pA/uRAzRjQ3IqOdPCUFXrLAHuKSiKgii3zV/ybtEkubY1cftBPEWL28BMx0BLppuHqGg
	1Zgw==
X-Gm-Message-State: AElRT7GAAJ0MM7SbtRKUpMe3Qhxq/SSysrC904/NGkZtsfPgImg660u0
	tB1JVwqA6BXts88Cl2LNbW0hQGPteWcjDF0xLls=
X-Google-Smtp-Source: AG47ELtwnZw9tRgGHarIrbCmMJpYO5lfooBDrCAbIhvCKlUJ4qQuGwpf8hfAeWHmcNFBLdiKZj729UrxIIc7FLCCVmE=
X-Received: by 10.28.170.205 with SMTP id t196mr13278299wme.42.1520377482327; 
	Tue, 06 Mar 2018 15:04:42 -0800 (PST)
MIME-Version: 1.0
Received: by 10.223.173.193 with HTTP; Tue, 6 Mar 2018 15:04:41 -0800 (PST)
In-Reply-To: <CAFzUWG=arXyu=DOa2tzDYd+3wvyKmHUXY3NSm6hefNQo7yfkFA@mail.gmail.com>
References: <CAFzUWGnMon5XzCaRiDMpd=UBOBOX2EBFECkg2UzZTxwLnxkEvQ@mail.gmail.com>
	<CAJTo0LZmVZkR1dFtVqsc0M4jDO21F+TUUE2AKO2rmHj9jLEgdw@mail.gmail.com>
	<2e1aacc2-a6a2-4667-b258-42e1599aac79@balister.org>
	<CAFzUWGmBeaEDpmk_Xdkm2qO3=z3NBsMExvp_kr6iFgzSdGAZzQ@mail.gmail.com>
	<987a403f-44b3-f075-7a08-53d0a7aeaf55@balister.org>
	<CAFzUWG=Zjc=nPtkOeHdw23TOq7UF2kLh4ZrM-SK3_JfZSP1ouA@mail.gmail.com>
	<CAJTo0Lbq1nduSntv-ZkEfMY4vfoj9O9aU7TLjXwg8HhrLHbhRg@mail.gmail.com>
	<CAFzUWGn2=vRoJQTgBRbmw2G=DqxbYgooMh+ji0VG48oRNNyO1w@mail.gmail.com>
	<CAJTo0LbfEoJiMg1paTsFjojSBZnWFgUycw8b_qtxOzWuvMwhsQ@mail.gmail.com>
	<CAFzUWGmFW4==kSeUOXT_OXGAW-geRbJsYiLQL+Wd6Ath45a5hg@mail.gmail.com>
	<CAJTo0LaWRz0ku=ESyTghyCnS5rVuo70K88VhL76AQcX2kbf_BQ@mail.gmail.com>
	<CAFzUWGkBGD__BLGC2RXwbo6npoqMT7krRPseT1Ax-9H9PNmVJQ@mail.gmail.com>
	<CAJ86T=Wvf7G6PMXBPXf+X=cbc6o6GbeTsr+pGPQzS-i9hMzKTw@mail.gmail.com>
	<CAFzUWGkdc0G3yXx3miOWRnKtax472LLYPjXm=uoyH3_CZ7tLkA@mail.gmail.com>
	<CAJ86T=UbFg+d0v0hr11+_LZJbomzLTPAVUc-rV4KhN7m9BRXHg@mail.gmail.com>
	<CAFzUWG=arXyu=DOa2tzDYd+3wvyKmHUXY3NSm6hefNQo7yfkFA@mail.gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Tue, 6 Mar 2018 15:04:41 -0800
Message-ID: <CAJ86T=XPGwncs9uYGghCPm8cZFdi7CY6+tjVWXScZNwocv0tVg@mail.gmail.com>
To: Giordon Stark <kratsg@gmail.com>
Cc: "N:" <yocto@yoctoproject.org>
Subject: Re: Bitbake recipe using CMake that requires python-six as part of compiling?
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
X-List-Received-Date: Tue, 06 Mar 2018 23:04:44 -0000
Content-Type: text/plain; charset="UTF-8"

On Tue, Mar 6, 2018 at 2:24 PM, Giordon Stark <kratsg@gmail.com> wrote:
> Is there a good recipe to follow where the normal rules apply for packaging
> and such? I had a hard time finding one that wasn't a rabbit-hole of *.inc
> files.

Start with the default packaging rules in meta/conf/bitbake.conf

Any packaging rules you find in a recipe are by definition workarounds
for oddly installed files or custom rules to handle packaging
requirements which don't fit the standard model - so not an ideal
reference when trying to understand the basics.

