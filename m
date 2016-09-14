Return-Path: <ambika@iwavesystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8D4FAE009C9; Wed, 14 Sep 2016 01:01:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.4 required=5.0 tests=BAYES_05,DKIM_SIGNED,
	HTML_MESSAGE,T_DKIM_INVALID autolearn=no version=3.3.1
X-Spam-HAM-Report: *  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.5 BAYES_05 BODY: Bayes spam probability is 1 to 5%
	*      [score: 0.0428]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.0 T_DKIM_INVALID DKIM-Signature header exists but is not valid
X-Greylist: delayed 400 seconds by postgrey-1.32 at yocto-www;
	Wed, 14 Sep 2016 01:01:15 PDT
Received: from sip2-98.nexcess.net (iwavesystems.com [207.32.180.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56AA7E009B8
	for <yocto@yoctoproject.org>; Wed, 14 Sep 2016 01:01:15 -0700 (PDT)
Comment: DomainKeys? See http://domainkeys.sourceforge.net/
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=default; d=iwavesystems.com;
	b=CVRiFAxhkdBY0LKRIXtPcBMsFQ7r5HEuI3fnoNNSveDTf8lRCNZKtYocjO/EPr4FHJEZpjV+7t4OioE61xJvzcZSWLUobG+IOf+4QBInUwb6VNUfgscLAEUBwpxHbOUuZH/6cTlfMJBMpy4MNyV+AsFP7geuCL7At/LhLqFIiqqHZ+y53GthOREitmtxmQVA/4RgS7ZpUpm+wpnymjzXXRDaL4xRTpZJhk+N4ySS8X5cLLPsrwrukjFAVBg7l3th6xF77gDPknCB8T3XrHVBkV/AYgYPu8l/lDoVnHxyzHKY/ZObilmjGrpBknQhR6vikzZq01rtATMSoB5VhR8QQg==;
	h=Received:To:Subject:MIME-Version:Content-Type:Date:From:Message-ID:X-Sender:User-Agent;
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=iwavesystems.com; h=to
	:subject:mime-version:content-type:date:from:message-id; s=
	default; bh=a5z83W0RQ9pt2F38YDnhM3mq5BY=; b=jUT+rUPq8+eEctQAta7Z
	e97cZqvpxELaQANgqhvJrWJVqnDswJ0zObx3IvvDVyK50WZiKWufezm3M0IzQ3Ay
	l8g7TYQfeDT9ie0r4BxiAjavSdd1A1bnPsqGk0VwU7REv5AOrR3RID/3j5Rm8F8x
	FA55B/QrfO9/okiIHI4Y4q6ayov2ReIHDmYQjqVN0iaR/VudycAdjh0UUOfUfxCF
	GvlQ/fzuf60oE0PMHu7xrNdm9x6yR36v3W9fw4+s3yCLmCMP/H4srJWbRh0Lhbc/
	Bsvs8i7+apZs0233RnLYUYDHCurZS2Jx5iAYvOFKgEWh0iCgXgARFfG1/GIdiauo
	RQ==
Received: (qmail 30638 invoked by uid 239); 14 Sep 2016 03:54:34 -0400
To: yocto@yoctoproject.org
MIME-Version: 1.0
Date: Wed, 14 Sep 2016 03:54:34 -0400
From: ambika@iwavesystems.com
Message-ID: <5c1591659f7bb76cdb3a1887b0cc42df@iwavesystems.com>
X-Sender: ambika@iwavesystems.com (ambika@iwavesystems.com)
User-Agent: Roundcube Webmail/1.1.2
Subject: Adding mysql in bitbaking meta-toolchain-qt5
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
X-List-Received-Date: Wed, 14 Sep 2016 08:01:19 -0000
Content-Type: multipart/alternative;
	boundary="=_b260585f3e96c0604156e382d937037b"

--=_b260585f3e96c0604156e382d937037b
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset=US-ASCII

 

Hello, 

I'm doing bitbake of meta-toolchain-qt5. When trying to use mysql, not
able to find it in include/ directory. 

mysql sources is located in the below path in my yocto setup, 

sources/meta-openembedded/meta-oe/recipes-support/mysql 

Tried to include mysql by adding the below to conf/local.conf under
build directory but could not able to locate mysql under include/. 
(Also not sure whether I'm doing it right.) 

IMAGE_INSTALL_append = "mysql" 

Can anyone please let me know the procedure to include mysql to the
meta-toolchain-qt5. 

Thanks in Advance. 

Regards, 
Ambika. 

 

--=_b260585f3e96c0604156e382d937037b
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; charset=
=3DUTF-8" /></head><body style=3D'font-size: 10pt; font-family: Verdana,Gen=
eva,sans-serif'>
<p>&nbsp;</p>
<div dir=3D"ltr">
<div style=3D"font-size: 12pt; font-family: 'Calibri'; color: #000000;">
<div>Hello,</div>
<div>&nbsp;</div>
<div>I&rsquo;m doing bitbake of meta-toolchain-qt5. When trying to use mysq=
l, not able to find it in include/ directory.</div>
<div>&nbsp;</div>
<div>mysql sources is located in the below path in my yocto setup,</div>
<div>&nbsp;</div>
<div><span style=3D"font-family: Arial;"><span style=3D"color: #1f497d;"><s=
pan><span style=3D"font-family: Calibri;"><span style=3D"color: #000000;">s=
ources/meta-openembedded/meta-oe/recipes-support/mysql</span></span></span>=
</span></span><span style=3D"font-family: Arial;"><span style=3D"color: #1f=
497d;"><span style=3D"font-size: 10pt;">&nbsp;</span></span></span></div>
<div>&nbsp;</div>
<div>Tried to include mysql by adding the below to conf/local.conf under bu=
ild directory but could not able to locate mysql under include/.</div>
<div>(Also not sure whether I&rsquo;m doing it right.)</div>
<div>&nbsp;</div>
<div><span style=3D"font-family: Arial;"><span style=3D"color: #1f497d;">IM=
AGE_INSTALL_append =3D </span></span><span style=3D"font-family: Arial;"><s=
pan style=3D"font-size: 10pt; color: #1f497d;">&rdquo;mysql&rdquo; </span><=
/span></div>
<div><span style=3D"color: #1f497d; font-family: Arial; font-size: small;">=
</span>&nbsp;</div>
<div><span style=3D"color: #000000;">Can anyone please let me know the proc=
edure to include mysql to the meta-toolchain-qt5.</span></div>
<div>&nbsp;</div>
<div>Thanks in Advance.</div>
<div>&nbsp;</div>
<div>Regards,</div>
<div>Ambika.</div>
</div>
</div>
<p>&nbsp;</p>
<div>&nbsp;</div>
</body></html>

--=_b260585f3e96c0604156e382d937037b--
