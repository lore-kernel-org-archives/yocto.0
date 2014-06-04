Return-Path: <ellurubharath29@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 794B1E00B74; Wed,  4 Jun 2014 11:35:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ellurubharath29[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.174 listed in list.dnswl.org]
Received: from mail-wi0-f174.google.com (mail-wi0-f174.google.com
	[209.85.212.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 998A8E00B6A
	for <yocto@yoctoproject.org>; Wed,  4 Jun 2014 11:35:06 -0700 (PDT)
Received: by mail-wi0-f174.google.com with SMTP id r20so9123319wiv.1
	for <yocto@yoctoproject.org>; Wed, 04 Jun 2014 11:35:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=3VxemvXMrsW6gcrgb1fe/vd47QpLocifJfSppym+fa8=;
	b=mombZCSsdRxv6dberwwzd7i1XISPiyBTNN6d9Et5FPA+eeUqQpraiDBNvgL10Jk5HM
	aQMTb4KoASVm8fR+G+3+ViQCqdV4BSO3SikXKfXOir3WxDIlmw00xhh7aPuEH0jObeog
	HrBI2yOpIc2gGlIqnHzK1QykMyDEIs9pj9fUTBLEgVlkBSDgptBcqk1btmXapNfMBpL5
	44tK4gvrK/x+g0YBhbR8QEWh+4CfLSxIs6lPVN44jG0VZ+EI1Qt4tyo0LTGbf701c0e0
	1iWd8dxnOuM9xfQBgJhJG8u3A0Eu9KrUDQcK2W2BmDtVf7atPSyYqwyc603uPMnpjsvN
	RKcw==
MIME-Version: 1.0
X-Received: by 10.180.221.163 with SMTP id qf3mr7906713wic.56.1401906905581;
	Wed, 04 Jun 2014 11:35:05 -0700 (PDT)
Received: by 10.194.172.164 with HTTP; Wed, 4 Jun 2014 11:35:05 -0700 (PDT)
Date: Wed, 4 Jun 2014 13:35:05 -0500
Message-ID: <CAGM0ZdSD2D0gTOXbvmtZJuK5Am0XY+5jDADYQEZg2psLnNmoOQ@mail.gmail.com>
From: Bharath Chandra <ellurubharath29@gmail.com>
To: yocto@yoctoproject.org
Subject: Build History Folder
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
X-List-Received-Date: Wed, 04 Jun 2014 18:35:09 -0000
Content-Type: multipart/alternative; boundary=001a1134d4541d8f1804fb06e391

--001a1134d4541d8f1804fb06e391
Content-Type: text/plain; charset=UTF-8

Hi,

I want to capture build history while building an image and I have done the
following settings in conf/local.conf file.

     INHERIT += "buildhistory"
     BUILDHISTORY_COMMIT = "1"

as suggested in
http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#maintaining-build-output-quality

But, the problem is buildhistory/images folder is being created but
*buildhistory/packages*

folder is *not being created*. Any kind of suggestions on this issue
would be helpful.



-- 
Thanks & Regards,
Bharath Chandra Elluru.
Contact Number:785-979-4875.

--001a1134d4541d8f1804fb06e391
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-family:arial black,sans-serif"><font>H=
i,<br><br>I want to capture build history while building an image and I hav=
e done the following settings in conf/local.conf file.<br><br></font></span=
><pre class=3D"">
<span style=3D"font-family:arial black,sans-serif"><font>     INHERIT +=3D =
&quot;buildhistory&quot;
     BUILDHISTORY_COMMIT =3D &quot;1&quot;<br><br></font></span></pre><pre =
class=3D""><span style=3D"font-family:arial black,sans-serif"><font>as sugg=
ested in <a href=3D"http://www.yoctoproject.org/docs/current/ref-manual/ref=
-manual.html#maintaining-build-output-quality">http://www.yoctoproject.org/=
docs/current/ref-manual/ref-manual.html#maintaining-build-output-quality</a=
><br>
<br></font></span></pre><pre class=3D""><span style=3D"font-family:arial bl=
ack,sans-serif"><font>But, the problem is buildhistory/images folder is bei=
ng created but <b>buildhistory/packages</b> <br></font></span></pre><pre cl=
ass=3D"">
<span style=3D"font-family:arial black,sans-serif"><font>folder is <b>not b=
eing created</b>. Any kind of suggestions on this issue would be helpful.<b=
r></font></span></pre><span style=3D"font-family:arial black,sans-serif"><f=
ont><br clear=3D"all">
</font></span><div><span style=3D"font-family:arial black,sans-serif"><font=
><br>-- <br></font></span><div dir=3D"ltr"><span style=3D"font-family:arial=
 black,sans-serif"><font>Thanks &amp; Regards,</font></span><div><span styl=
e=3D"font-family:arial black,sans-serif"><font>Bharath Chandra Elluru.</fon=
t></span></div>
<div><span style=3D"font-family:arial black,sans-serif"><font>Contact Numbe=
r:785-979-4875.</font></span></div></div>
</div></div>

--001a1134d4541d8f1804fb06e391--
