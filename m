Return-Path: <alain.achkar@triacta.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 73D73E009B2; Thu, 30 Mar 2017 11:45:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.41 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f41.google.com (mail-oi0-f41.google.com
	[209.85.218.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1ACB8E00961
	for <yocto@yoctoproject.org>; Thu, 30 Mar 2017 11:45:04 -0700 (PDT)
Received: by mail-oi0-f41.google.com with SMTP id r203so39947863oib.3
	for <yocto@yoctoproject.org>; Thu, 30 Mar 2017 11:45:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=triacta.com; s=google;
	h=mime-version:from:date:message-id:subject:to;
	bh=zsPXhTGtfv82FDgWUNeKGLnC/2tKp9CmDLbWAWgK5LQ=;
	b=YuWiEwzOQNlbeVzsY4+zgx8Wu19Z41mcWh4XQhWdWXKGPzqalsbJSx1znOHMONR9Cx
	78X8rgMqDPnBMb8yDogsPq87iMeWNBDCq8PxrN2QJbTns/G8F6n7Q7kfMRLSYzDQwHKE
	0V584cclhtNlRUchr/lLR1U9CXsFoyW4eBows=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=zsPXhTGtfv82FDgWUNeKGLnC/2tKp9CmDLbWAWgK5LQ=;
	b=N4p6R1pMBGyZ/CHxTc8rfidSZePHHLA1rgg9c2VdEsUmpPxxhyv4HJ9zJDyycos7ln
	tJwjSx+QkOEe8a780ijta19WwlLLwqDiH4MZMzcFKM61A55ED6t0SQnJE7pX/uCO8P6T
	ER4o70vh38a5JMjhASDnT3RD9oYQ+aVXsJ4PmLquxE+58B8P59+XpWoOKebtQsy+roi4
	Se8afOU31cgohk1So386Qj1Ak5nfiXe4cOBeRskIFsXcFWc3J7OtsB5/WL49DcIgzScc
	v3M2re7zl0MfvAjuwpv4vWfmqICiOsLX7G/Z7LCW1aHKhfQhLBGLV/OoVshz67XlaT8d
	1KgA==
X-Gm-Message-State: AFeK/H15/KOdM7ywwIX+hzSzFnrDWnEC7u5Jc9p2pzM7/WCCtYV18k3TNgKevO2C26EndZNWWVQTMbfu7V+vvGp0
X-Received: by 10.202.212.196 with SMTP id l187mr785397oig.65.1490899503206;
	Thu, 30 Mar 2017 11:45:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.4.12 with HTTP; Thu, 30 Mar 2017 11:44:22 -0700 (PDT)
From: Alain Achkar <alain.achkar@triacta.com>
Date: Thu, 30 Mar 2017 14:44:22 -0400
Message-ID: <CAGkf0HCuR9oSm-nv3aZs1KkHztJrDBRQBnwTA71FwO8NMRD2AQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Meaning of 'Support Level' column in https://wiki.yoctoproject.org/wiki/Releases
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
X-List-Received-Date: Thu, 30 Mar 2017 18:45:06 -0000
Content-Type: multipart/alternative; boundary=001a113ad7ea48dea1054bf7174e

--001a113ad7ea48dea1054bf7174e
Content-Type: text/plain; charset=UTF-8

Hello!

We are currently on Jethro and planning to upgrade to Krogoth (can't use
Morty yet, since Freescale/NXP hasn't released Morty yet).

Just wondering what the meaning of the 'Support Level' column is, or if you
can point me to documentation about it.

Thanks!

--001a113ad7ea48dea1054bf7174e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello!<div><br></div><div>We are currently on Jethro and p=
lanning to upgrade to Krogoth (can&#39;t use Morty yet, since Freescale/NXP=
 hasn&#39;t released Morty yet).</div><div><br></div><div>Just wondering wh=
at the meaning of the &#39;Support Level&#39; column is, or if you can poin=
t me to documentation about it.</div><div><br></div><div>Thanks!</div><div>=
<br clear=3D"all"><div><br></div>
</div></div>

--001a113ad7ea48dea1054bf7174e--
