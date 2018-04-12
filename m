Return-Path: <atul.singh008@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ADAFAE00B18; Wed, 11 Apr 2018 20:19:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (atul.singh008[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f171.google.com (mail-io0-f171.google.com
	[209.85.223.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33205E00529
	for <yocto@yoctoproject.org>; Wed, 11 Apr 2018 20:19:53 -0700 (PDT)
Received: by mail-io0-f171.google.com with SMTP id d6so4743854iog.1
	for <yocto@yoctoproject.org>; Wed, 11 Apr 2018 20:19:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=ghV8qaKjTj5za8t7Dc8KcZcTUdC3voE2fXYDROTWRao=;
	b=pFJ8wINHMfydX5cOogrNyQb51auypnooaxbZh6OU05URBVl1+Mq4FqzHp5dt1/Sr7N
	/QfK1QUYPOwrObeLubDHWE4USEFjrkJnxucWwtWM0FBKFU3tB9IieT0Tc2/BB+Nzf4ZA
	81jsvfVAONbSjDf96sgWXWuj5SuH6ZIoUujDIndsEy4vFh9p9tiGa/EERrmHtxaaK03T
	KJPl8Nq/VClAOI2zpsjsVbwsp6a0U8px4VaZYLVVB7X7qYjMmj42eOl8+Jp51JRximI3
	eLKDpPLBL2Tcu74G6fh12mzdQS2CmE5OGKvVhIzH3IA4Kwh3QnFc3NhROki7zMoqlPPW
	qhKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=ghV8qaKjTj5za8t7Dc8KcZcTUdC3voE2fXYDROTWRao=;
	b=VurH8yr6cW8yZtczQs5rOnfdO3RgiQG2n3zxcjFkXfSX+Nl1JbPv/Vo5DYhPRuim9u
	lUfT3RDNu31UVMJTtlweIxByCWJbgSXLDBs29VsZUEwFl9b4a9zDtv3vzkut1ju7PP9P
	jfkhz7VFwgNCDFrZNMPhsYR5NZsWzrhWvgoi/pjwhVvJBQU9MWYJl9GhYYtFeTMcKDqA
	CcTLVmyzLv+VADmBcLSDVIzDa55PSyJfrWQ3TSgLclpRfGCyZ5akVY9eB/ZOcdL+6NsN
	5VZIe+Mm9gPSPbV6L+xmy7R6ymCQQdXA/eWq1icJ+jwgg7df0bMvXCxW96Dduk4N78qO
	pM8g==
X-Gm-Message-State: ALQs6tC9a6vEsgXH10H8v9S1hu/K4ej9ormtl2T8SNdgwZApV5lV4eOZ
	LNWbQjRotc09zFvIadM7qARv3Oo5CGgdfS99bgxjzA==
X-Google-Smtp-Source: AIpwx4+++86d9inMBdy18MB80LJQQsDVj+AnVTWfRUfFsP7KXAFk5OIlPv2en8Mcvvl6ghu+zAwzdPLwDLafnwvuVQA=
X-Received: by 10.107.46.30 with SMTP id i30mr7494888ioo.288.1523503193000;
	Wed, 11 Apr 2018 20:19:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.44.81 with HTTP; Wed, 11 Apr 2018 20:19:32 -0700 (PDT)
From: atulkumar singh <atul.singh008@gmail.com>
Date: Thu, 12 Apr 2018 08:49:32 +0530
Message-ID: <CAH21_vGcVkPs1rCMWKa6_B=Y_C2BBzrssoK4gqB_1JaifJ-fbg@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Fri, 13 Apr 2018 08:20:18 -0700
Subject: Regarding support of machine learning algorithm/framework
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
X-List-Received-Date: Thu, 12 Apr 2018 03:19:54 -0000
Content-Type: multipart/alternative; boundary="001a11372550a2104805699e3aac"

--001a11372550a2104805699e3aac
Content-Type: text/plain; charset="UTF-8"

Hello All,

These days we are hearing a lot about artificial intelligence and now every
company whichever domain it belongs works in AI.
Either it's about automotive(Autonomous driving), Surveillance(Object
detection) or IOT.
So as the industry is moving towards AI, in that case, is there something
which is supported in our Yocto distribution to support the same?
Basically, I am looking for the framework/algorithm which can support
convolutional neural network like tensor flow.

Please do let me know if we have some sort of already existing solution to
support or if there is any plan to add the support.

Waiting to hear the details on convolutional neural network framework
support onto Yocto.



*Thanks and  regards,ATUL KUMAR SINGH*P  Before printing this page, think
about your responsibility with the Natural Environment & Cost Savings.

--001a11372550a2104805699e3aac
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial na=
rrow,sans-serif;color:#3333ff">Hello All,</div><div class=3D"gmail_default"=
 style=3D"font-family:arial narrow,sans-serif;color:#3333ff"><br></div><div=
 class=3D"gmail_default" style=3D"font-family:arial narrow,sans-serif;color=
:#3333ff">These days=C2=A0we are hearing a lot about artificial intelligenc=
e and now every company whichever domain it belongs works in AI.</div><div =
class=3D"gmail_default" style=3D"font-family:arial narrow,sans-serif;color:=
#3333ff">Either it&#39;s about automotive(Autonomous driving), Surveillance=
(Object detection) or IOT.</div><div class=3D"gmail_default" style=3D"font-=
family:arial narrow,sans-serif;color:#3333ff">So as the industry is moving =
towards AI, in that case, is there something which is supported in our Yoct=
o distribution to support the same?</div><div class=3D"gmail_default" style=
=3D"font-family:arial narrow,sans-serif;color:#3333ff">Basically, I am look=
ing for the framework/algorithm which can support convolutional neural netw=
ork like tensor flow.</div><div class=3D"gmail_default" style=3D"font-famil=
y:arial narrow,sans-serif;color:#3333ff"><br></div><div class=3D"gmail_defa=
ult" style=3D"font-family:arial narrow,sans-serif;color:#3333ff">Please do =
let me know if we have some sort of already existing solution to support or=
 if there is any plan to add the support.</div><div class=3D"gmail_default"=
 style=3D"font-family:arial narrow,sans-serif;color:#3333ff"><br></div><div=
 class=3D"gmail_default" style=3D"font-family:arial narrow,sans-serif;color=
:#3333ff">Waiting to hear the details on convolutional neural network frame=
work support onto Yocto.</div><div><div class=3D"gmail_signature" data-smar=
tmail=3D"gmail_signature"><div dir=3D"ltr"><div><div><font color=3D"#3366FF=
"><b><br>Thanks and=C2=A0 regards,<br>ATUL KUMAR SINGH<br></b></font><span =
style=3D"font-size:12.8px;font-family:Webdings;color:green">P</span><span s=
tyle=3D"font-size:12.8px;color:rgb(31,73,125)">=C2=A0=C2=A0</span><span sty=
le=3D"font-size:7.5pt;color:green">Before printing this page, think about y=
our responsibility with the Natural Environment &amp; Cost Savings.</span><=
font color=3D"#3366FF"><b><br></b></font></div></div></div></div></div>
</div>

--001a11372550a2104805699e3aac--
