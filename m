Return-Path: <heutinck.h@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D8962E00D1C; Wed, 26 Oct 2016 05:45:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (heutinck.h[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.170 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.161.170 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f170.google.com (mail-yw0-f170.google.com
	[209.85.161.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1CE56E00D00
	for <yocto@yoctoproject.org>; Wed, 26 Oct 2016 05:45:54 -0700 (PDT)
Received: by mail-yw0-f170.google.com with SMTP id h14so5940246ywa.2
	for <yocto@yoctoproject.org>; Wed, 26 Oct 2016 05:45:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=RQzKKXpVxilxWVEW1T5q0qqgYhW8X0iLPi3PLgq9COY=;
	b=th4CE5Vlrd8izEFRQkcki5TGsjPXILa8JFPX0r4TnV5nIOmFJIEroxmr59DSpBtr8M
	rKvuhpiUUNPt3gNPoVR4JSSlKgOBFIWiAzHraCDaS6tmgonB2Yr1woe/Jz85gsdhtZy2
	wBFx+ICZ5KgbEE64QXiAccmAlUPOFISI6FobUAFdG6tTom+muieybLa3cEtyE+qtHdcV
	ljXwg8XahoeS7ME5PP1cgAzvOEQcbEEnGqbKZSLvX9inEnqgJOu4owmcXCXPlisCDVKd
	pJjZHM9+eMiNQuyfxcjEoxU1C3rlrxraud8gVnteyNfg63cQbxx9/X8gVavgNjR8rv3Z
	wjfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=RQzKKXpVxilxWVEW1T5q0qqgYhW8X0iLPi3PLgq9COY=;
	b=R4YlzqqZKjdV8u+1apDZCfwkHTXOCuRoCNSbTA18w+iNMWTdDBgu6RAHQb4oLDg+MS
	4e8VHH8twT3aqlkaT0KiHMwifvoRfjax1MoNDg8dFnu3ar2iBSKqVFldH7LCyRI/Y/Wc
	2p+XDe2H3IdcSbV+DcbBDYyETbJ4CrCp0F+7zlF+IxxNzU9pQG6N26tRsjtcHFYYMHR7
	TY8IB/9WRNJDas1O0H8r/0JhXSFPwS1HYuYB0I7lJgB4dcElrc2vQp1kdvYbAyINgEWq
	PGC20ieg0kXJ71vMpRzPNUUY3DWD2Jqw2akKLjyWgVtioC0yAfQvLfZK15lriBuLkU4a
	H5ZA==
X-Gm-Message-State: ABUngvcfPQnsf9Dc1lqcK9sVC3TVbZPrKX9zHBNhF9Fuw1Dx801+fJ6C5TkdtCDl7UXz30xrV3Jk09ScOaFRxw==
X-Received: by 10.129.36.4 with SMTP id k4mr1638881ywk.162.1477485953682; Wed,
	26 Oct 2016 05:45:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.13.232.18 with HTTP; Wed, 26 Oct 2016 05:45:53 -0700 (PDT)
From: Hugo Heutinck <heutinck.h@gmail.com>
Date: Wed, 26 Oct 2016 14:45:53 +0200
Message-ID: <CADEQAgjJjnajV+RaN0e=ch4MUt7PBQY42y7929m_hzuH4k0Psw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Package relation between package.manifest and license.manifest
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
X-List-Received-Date: Wed, 26 Oct 2016 12:45:55 -0000
Content-Type: multipart/alternative; boundary=001a11427e246e1ce7053fc401be

--001a11427e246e1ce7053fc401be
Content-Type: text/plain; charset=UTF-8

Question: What is the relation between the package.manifest and
license.manifest ?

After a yocto poky based image has been built there are 2 files in the
licenses directory "tmp/deploy/licenses/*image_name-datestamp*"

One is the package.manifest, which if understood correctly is a list of all
packages included in the image.

The second file is the license.manifest, but this one contains besides the
package name also the version, recipe name and license of the package.

However if I compare the package names in both lists, there seem to be a
number of packages in the license.manifest that are not part of the
package.manifest. E.g. "readline, popt, expat, freetype".

Is the license.manifest a list of all items in the package.manifest +
?build dependencies? or something ?

Regards,

H.Heutinck

--001a11427e246e1ce7053fc401be
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div>Question: What is the relation be=
tween the package.manifest and license.manifest ?<br><br>After a yocto poky=
 based image has been built there are 2 files in the licenses directory &qu=
ot;tmp/deploy/licenses/<code class=3D"gmail-filename"><em class=3D"gmail-re=
placeable"><code>image_name-datestamp</code></em></code>&quot;<br><br></div=
>One is the package.manifest, which if understood correctly is a list of al=
l packages included in the image.<br><br></div>The second file is the licen=
se.manifest, but this one contains besides the package name also the versio=
n, recipe name and license of the package.<br><br></div>However if I compar=
e the package names in both lists, there seem to be a=C2=A0 number of packa=
ges in the license.manifest that are not part of the package.manifest. E.g.=
 &quot;readline, popt, expat, freetype&quot;.<br></div><br></div><div>Is th=
e license.manifest a list of all items in the package.manifest + ?build dep=
endencies? or something ?<br><br></div><div>Regards,<br><br></div><div>H.He=
utinck<br></div></div>

--001a11427e246e1ce7053fc401be--
