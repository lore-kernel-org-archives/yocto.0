Return-Path: <hasanvand.milad@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B052BE00D18; Mon, 12 Sep 2016 23:33:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW, 
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (hasanvand.milad[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.53 listed in list.dnswl.org]
	*  0.0 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.53 listed in dnsbl.sorbs.net]
Received: from mail-oi0-f53.google.com (mail-oi0-f53.google.com
	[209.85.218.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 661EBE00D01
	for <yocto@yoctoproject.org>; Mon, 12 Sep 2016 23:32:57 -0700 (PDT)
Received: by mail-oi0-f53.google.com with SMTP id y2so365671199oie.0
	for <yocto@yoctoproject.org>; Mon, 12 Sep 2016 23:32:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=msIQhBmMuT5wETU6hMb/bUqFrCVrhLt/Us15fPZEkqQ=;
	b=r2XYwywWkrx/ecLjiZosEffvGUhHPueDDaIN+feTnV0KKHVt3X1d7kR/0r6nNkIlH6
	QBrk/1JmGGx6K0QQwN67odlYrN1fdMpNyJKuBRj6WuzemNNekOchMKABWGGP8YRqCN05
	05l3Dps4RA9lD1IgkxotgV95zK6hiQYFZY2DSwADbKvKpy1B9s9GGUEe/c2WwPYafoid
	nYD5vCGCI6YDhnXjo5uYKPLvANN0A1rLQ2VlvR5coY2Unr1Cku/pRQN+IPz0AIN6XsUy
	0e4QkKVAIDhcnvwziUgbw74wFoeUAIC/oaAWeHWqRia5UWdB+WTRro0Fl85Ymw7UIA+W
	aNTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=msIQhBmMuT5wETU6hMb/bUqFrCVrhLt/Us15fPZEkqQ=;
	b=LSytiYwSgFRSC+ZDC7L9yqkiAKmEB89nEzVDDwFE2PuOXsgtN6j/bfRyAxo+k2V0YI
	v4jAR4OlOZjVU53Mb0vhizCc89p+OAzLsQVZxq4TLMv2C9Qv3ukVjFF4KyEGPs69OZgY
	sNVRQBTazef47ESbOUe8P9J7ub3CZHCzUde8SWwsl7QPcUR5pXZBkuU8dPtP3UsJuXAc
	bAb/2PeUYU4Nv4bdXU7KwsvQVdm+mOLHxXPYBWdUitvibH13a9efv+0rfo4bzXNhO+Jb
	FYZUcD9CPu8GO/n/2XpGWl+lvxSlEPBp0NQIlF2uTwY5HujWiPioMx45MGybLGGRdLMI
	V2Hg==
X-Gm-Message-State: AE9vXwMRPjnjnSZL2Hgn2qstOTH+748tBK0uiPwTb6rHWBMQ1DVoP1E4C1M+JxoXOZMZQ2xhBWJfoBRcv7nx4Q==
X-Received: by 10.202.239.4 with SMTP id n4mr4592186oih.114.1473748377207;
	Mon, 12 Sep 2016 23:32:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.0.26 with HTTP; Mon, 12 Sep 2016 23:32:56 -0700 (PDT)
From: milad hasanvand <hasanvand.milad@gmail.com>
Date: Tue, 13 Sep 2016 11:02:56 +0430
Message-ID: <CAPSYY_SVOELW0Nmx0x=VYhyDA+SvXbDfKs68vXvsBEC6-n8Rtg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: question about populate sdk from gdp 11
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
X-List-Received-Date: Tue, 13 Sep 2016 06:33:03 -0000
Content-Type: multipart/alternative; boundary=94eb2c09320c830a99053c5dc85b

--94eb2c09320c830a99053c5dc85b
Content-Type: text/plain; charset=UTF-8

Dear all,

based on the material presented in GDP master, i successfully compiled it
and it is working. but when i try to extract sdk using this command
" bitbake genivi-dev-platform-sdk -c populate_sdk " i got the following
error:

"
ERROR: Taskhash mismatch 717dd6510c2db4bae5bb8bab51bd0c34 verses
ee9d2e3d5e34240b4487488cd5a60373 for
/home/milad/GDP/genivi-dev-platform/gdp-src-build/../meta-genivi-dev/meta-genivi-dev/recipes-dev-platform/images/genivi-dev-platform-sdk.bb.do_populate_sdk

NOTE: Tasks Summary: Attempted 5252 tasks of which 5251 didn't need to be
rerun and all succeeded.
"

it should be noted that it fails on the last task!!!!!

thank you all in advance



Regards;

*Milad Hasanvand*

*Connected Car System Designer @ AIRIC-SAIPA*

-------------------------------------------------------------------------------------------

<http://airic-ir.com/>

Automotive Industries Research & Innovation Center (AIRIC)
SAIPA Group

15th Km Karadj Makhsoos Rd., Tehran, Iran.
P.O. Box 13445/967
hasanvand.milad@airic-ir.com
Mobile:   +98 938 510 0152

--94eb2c09320c830a99053c5dc85b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Dear all,<div><br></div><div>based on the material present=
ed in GDP master, i successfully compiled it and it is working. but when i =
try to extract sdk using this command &quot;=C2=A0bitbake genivi-dev-platfo=
rm-sdk -c populate_sdk &quot; i got the following error:</div><div><br></di=
v><div>&quot;</div><div><div>ERROR: Taskhash mismatch 717dd6510c2db4bae5bb8=
bab51bd0c34 verses ee9d2e3d5e34240b4487488cd5a60373 for /home/milad/GDP/gen=
ivi-dev-platform/gdp-src-build/../meta-genivi-dev/meta-genivi-dev/recipes-d=
ev-platform/images/genivi-dev-platform-sdk.bb.do_populate_sdk</div><div><br=
></div><div>NOTE: Tasks Summary: Attempted 5252 tasks of which 5251 didn&#3=
9;t need to be rerun and all succeeded.</div><div>&quot;</div><div><br></di=
v><div>it should be noted that it fails on the last task!!!!!</div><div><br=
></div><div>thank you all in advance</div><div><div class=3D"gmail_signatur=
e"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div d=
ir=3D"ltr"><font color=3D"#000000" face=3D"Times New Roman" size=3D"3">

</font><p style=3D"margin:0in 0in 0pt"><font color=3D"#000000" face=3D"Time=
s New Roman" size=3D"3">

</font></p><p style=3D"margin:0in 0in 0pt"><font color=3D"#000000" face=3D"=
Calibri" size=3D"3">=C2=A0</font></p><p style=3D"margin:0in 0in 0pt"><font =
color=3D"#000000" face=3D"Times New Roman" size=3D"3">

</font></p><p style=3D"margin:0in 0in 0pt"><a name=3D"UNIQUE_ID_SafeHtmlFil=
ter_UNIQUE_ID_SafeHtmlFilter__MailAutoSig"><span style=3D"color:rgb(31,73,1=
25);font-family:arial,sans-serif;font-size:10pt">Regards;</span></a></p><p =
style=3D"margin:0in 0in 0pt"><font color=3D"#000000" face=3D"Times New Roma=
n" size=3D"3">

</font></p><p style=3D"margin:0in 0in 0pt"><span><b><span style=3D"color:rg=
b(31,73,125);font-family:arial,sans-serif;font-size:10pt">Milad Hasanvand</=
span></b></span></p><p style=3D"margin:0in 0in 0pt"><font color=3D"#000000"=
 face=3D"Times New Roman" size=3D"3">

</font></p><p style=3D"margin:0in 0in 0pt"><span><b><span style=3D"color:rg=
b(31,73,125);font-family:arial,sans-serif;font-size:10pt">Connected Car Sys=
tem Designer @ AIRIC-SAIPA</span></b></span></p><p style=3D"margin:0in 0in =
0pt"><font color=3D"#000000" face=3D"Times New Roman" size=3D"3">

</font></p><p style=3D"margin:0in 0in 0pt"><span><span style=3D"color:rgb(3=
1,73,125);font-family:arial,sans-serif;font-size:10pt">--------------------=
-----------------------------------------------------------------------</sp=
an></span></p><p style=3D"margin:0in 0in 0pt"><font color=3D"#000000" face=
=3D"Times New Roman" size=3D"3">

</font></p><p style=3D"margin:0in 0in 0pt"><span></span><a href=3D"http://a=
iric-ir.com/" target=3D"_blank"><span><span style=3D"color:rgb(31,73,125);f=
ont-family:arial,sans-serif;font-size:10pt;text-decoration:none"><span><fon=
t color=3D"#000000" face=3D"Times New Roman" size=3D"3"></font></span></spa=
n></span><span></span></a><span><span style=3D"color:rgb(31,73,125);font-fa=
mily:arial,sans-serif;font-size:10pt"><img src=3D"https://docs.google.com/u=
c?export=3Ddownload&amp;id=3D0B8abgrk1-H90VFF6NURpU0V5dHc&amp;revid=3D0B8ab=
grk1-H90ODl6YUJWWnl4V1BkTkROOVdmR21aRjBlNUl3PQ"></span></span></p><p style=
=3D"margin:0in 0in 0pt"><font color=3D"#000000" face=3D"Times New Roman" si=
ze=3D"3">
</font></p><p style=3D"margin:0in 0in 0pt"><span><span style=3D"color:rgb(3=
1,73,125);font-family:arial,sans-serif;font-size:10pt">Automotive Industrie=
s Research &amp; Innovation Center
(AIRIC)<br>
SAIPA Group</span></span></p><p style=3D"margin:0in 0in 0pt"><font color=3D=
"#000000" face=3D"Times New Roman" size=3D"3">

</font></p><p style=3D"margin:0in 0in 0pt"><span><span style=3D"color:rgb(3=
1,73,125);font-family:arial,sans-serif;font-size:10pt">15th Km Karadj Makhs=
oos Rd., Tehran, Iran.<br>
P.O. Box 13445/967<br>
</span></span><span></span><a href=3D"mailto:hasanvand.milad@airic-ir.com" =
target=3D"_blank"><span><span style=3D"color:rgb(5,99,193);font-family:aria=
l,sans-serif;font-size:10pt">hasanvand.milad@airic-ir.com</span></span><spa=
n></span></a><span><span style=3D"color:rgb(31,73,125);font-family:arial,sa=
ns-serif;font-size:10pt"><br>
Mobile:=C2=A0=C2=A0 +98 938 510 0152</span></span></p><p style=3D"margin:0i=
n 0in 0pt"><font color=3D"#000000" face=3D"Times New Roman" size=3D"3">

</font></p></div></div></div></div></div></div></div></div></div>
</div></div>

--94eb2c09320c830a99053c5dc85b--
