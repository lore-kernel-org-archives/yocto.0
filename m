Return-Path: <urnen81@yahoo.es>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 67805E00C29; Mon, 22 Feb 2016 07:41:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLYTO_END_DIGIT,
	HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (urnen81[at]yahoo.es)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.82.97.26 listed in list.dnswl.org]
	* 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
	digit *      (oliver <urnen81[at]yahoo.es> )
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm24-vm2.bullet.mail.ir2.yahoo.com
	(nm24-vm2.bullet.mail.ir2.yahoo.com [212.82.97.26])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A402CE00838
	for <yocto@yoctoproject.org>; Mon, 22 Feb 2016 07:41:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.es; s=s2048;
	t=1456155705; bh=OFl9kEWqOxhkwkD8uxfRicAHzzNkPZ7DIuTLDXUWUyg=;
	h=Date:From:Reply-To:To:Subject:References:From:Subject;
	b=ZOEH3SLqDFEiPsNP7o9QYsdL8DusgujFU/Ku1jBGTrYZudLoBI8xwuIAnUZdbdEJuQYa/u5A9YNcbgU5+2xsI2GdsKzHJQpIz185fW9CEGv3UDwrEtQxs7hVAXnJRwTfNLTifwC9RwUHzOl8+wgJ6fv0zXlH3KNFwSx+zYCxYRwt1mepFCHds5yGOaZ9dMwN50zWKfKambzTGvUvvvYMSH6YJGS/jm3hfwa0QtYfDbR/u1m4g6lXVEVjW/w7JvSH5NEt0VAEO3gYCC4Y1mF/xvnpWa6gF+CY2AGI+ZfrZyRLh1x4UNWUj3jsDx5iJr0zMN6ZWh0PSmuqyXcwK1AX4Q==
Received: from [212.82.98.54] by nm24.bullet.mail.ir2.yahoo.com with NNFMP;
	22 Feb 2016 15:41:45 -0000
Received: from [212.82.98.106] by tm7.bullet.mail.ir2.yahoo.com with NNFMP;
	22 Feb 2016 15:41:45 -0000
Received: from [127.0.0.1] by omp1043.mail.ir2.yahoo.com with NNFMP;
	22 Feb 2016 15:41:45 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 804744.89803.bm@omp1043.mail.ir2.yahoo.com
X-YMail-OSG: 1FI.Ij4VM1nyQf9MV9XwWJ654.YlHNophkgDoshpK_AYiYfXjDo0oBu6RyKSyTg
	Nq0tnjYADGuoqX2bDkHImu4OdIKhj54lzwHEc68LW4QdV.j4tNjD.eUp8jwtrOnjniQfNWPjak4O
	uux132IjMyoL2MoxgjfJ5_SUIt5ntiKnlvZf4MA.ZUQbEfl7_4dQGLiaPgB1WZ71sr2RuI56Xl1O
	oMD8P1ytBYn_0x5f9qQV6kwynVsmOhqRE7DnOPlwMMz9Zrc5C.0L1pV2xPRaZMQvsLwu47YGYUhg
	JlHy_7lGf32xXaiBJVvGEgBPm.UZZWJlrpXkcAH0icWFrOx55fsuq0K7yPnXgvPLNEO4ObCe0.85
	4JT7ss2grHhIqdAWwpYpF1RmUSDauAHgHmFrJZoXL69q33ST9DDSBUt4Zci80JS5PauO6ophsp4Z
	6WEDlOtv7W2FDHXd7V3K_7ELg0ifYJczKdOnCeFEgkZuKEAAxN7bJqSSsmCD.UY9EO_afk_8lDyF
	UbTTdSOj4yzdYOg--
Received: by 217.12.8.245; Mon, 22 Feb 2016 15:41:45 +0000 
Date: Mon, 22 Feb 2016 15:41:09 +0000 (UTC)
From: Oliver <urnen81@yahoo.es>
To: Yocto Project <yocto@yoctoproject.org>
Message-ID: <1943070027.12677279.1456155669938.JavaMail.yahoo@mail.yahoo.com>
MIME-Version: 1.0
References: <1943070027.12677279.1456155669938.JavaMail.yahoo.ref@mail.yahoo.com>
Subject: Post Generation of debug information
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Oliver <urnen81@yahoo.es>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 22 Feb 2016 15:41:51 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_12677278_2022628727.1456155669935"

------=_Part_12677278_2022628727.1456155669935
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I have the need to generate some scripts for a debuggertool. As a first app=
roach, these generated scripts could contain paths on wherespecific binary =
files are stored on the file system.=20


=C2=A0
Such purpose has been partially fulfilled with a recipe implementingthe do_=
compile task to generate those files, assuming not implementing thedeployin=
g tasks, nothing gets integrated in the final image.=20


=C2=A0
Therefore the debugger tool could go to build/work/temp/=E2=80=A6/myrecipe/=
=E2=80=A6=C2=A0(WORKDIR of the recipe) as a startpointfor such scripts.


=C2=A0
2 Questions:


=C2=A0
-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0There would be a bet=
ter solution for this task?

-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0The task has not bee=
n as successfully asexpected. Ideally I would access variables of other rec=
ipes to know where theyare their output/intermediate files. E.g. location o=
f an elf file for u-boot.Is there any way around this?


Regards

------=_Part_12677278_2022628727.1456155669935
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div style=3D"color:#000; background-color:#fff; f=
ont-family:HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, =
sans-serif;font-size:16px"><div class=3D"" id=3D"yui_3_16_0_1_1456155410736=
_4355">I have the need to generate some scripts for a debugger
tool. As a first approach, these generated scripts could contain paths on w=
here
specific binary files are stored on the file system. <o:p id=3D"yui_3_16_0_=
1_1456155410736_4357" class=3D""></o:p></div><div class=3D"" id=3D"yui_3_16=
_0_1_1456155410736_4359"><o:p id=3D"yui_3_16_0_1_1456155410736_4361" class=
=3D"">&nbsp;</o:p></div><div class=3D"" id=3D"yui_3_16_0_1_1456155410736_43=
63">Such purpose has been partially fulfilled with a recipe implementing
the do_compile task to generate those files, assuming not implementing the
deploying tasks, nothing gets integrated in the final image. <o:p id=3D"yui=
_3_16_0_1_1456155410736_4365" class=3D""></o:p></div><div class=3D"" id=3D"=
yui_3_16_0_1_1456155410736_4367"><o:p id=3D"yui_3_16_0_1_1456155410736_4369=
" class=3D"">&nbsp;</o:p></div><div class=3D"" id=3D"yui_3_16_0_1_145615541=
0736_4371">Therefore the debugger tool could go to build/work/temp/=E2=80=
=A6/myrecipe/=E2=80=A6
&nbsp;(WORKDIR of the recipe) as a startpoint
for such scripts.<o:p id=3D"yui_3_16_0_1_1456155410736_4373" class=3D""></o=
:p></div><div class=3D"" id=3D"yui_3_16_0_1_1456155410736_4375"><o:p id=3D"=
yui_3_16_0_1_1456155410736_4377" class=3D"">&nbsp;</o:p></div><div class=3D=
"" id=3D"yui_3_16_0_1_1456155410736_4379">2 Questions:<o:p id=3D"yui_3_16_0=
_1_1456155410736_4381" class=3D""></o:p></div><div class=3D"" id=3D"yui_3_1=
6_0_1_1456155410736_4383"><o:p id=3D"yui_3_16_0_1_1456155410736_4385" class=
=3D"">&nbsp;</o:p></div><div class=3D"" style=3D"text-indent:-18.0pt;mso-li=
st:l0 level1 lfo1" id=3D"yui_3_16_0_1_1456155410736_4387"><!--[if !supportL=
ists]-->-<span style=3D"font-stretch: normal; font-size: 7pt; font-family: =
'Times New Roman';" id=3D"yui_3_16_0_1_1456155410736_4389" class=3D"">&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><!--[endif]-->There would be a better solution for this task?<o:p id=
=3D"yui_3_16_0_1_1456155410736_4391" class=3D""></o:p></div><div>

















</div><div class=3D"" style=3D"text-indent:-18.0pt;mso-list:l0 level1 lfo1"=
 dir=3D"ltr" id=3D"yui_3_16_0_1_1456155410736_4393"><!--[if !supportLists]-=
->-<span style=3D"font-stretch: normal; font-size: 7pt; font-family: 'Times=
 New Roman';" id=3D"yui_3_16_0_1_1456155410736_4395" class=3D"">&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><!--[endif]-->The task has not been as successfully as
expected. Ideally I would access variables of other recipes to know where t=
hey
are their output/intermediate files. E.g. location of an elf file for u-boo=
t.
Is there any way around this?<o:p id=3D"yui_3_16_0_1_1456155410736_4397" cl=
ass=3D""></o:p></div><div class=3D"" style=3D"text-indent:-18.0pt;mso-list:=
l0 level1 lfo1" dir=3D"ltr" id=3D"yui_3_16_0_1_1456155410736_4393"><br></di=
v><div class=3D"" style=3D"text-indent:-18.0pt;mso-list:l0 level1 lfo1" dir=
=3D"ltr" id=3D"yui_3_16_0_1_1456155410736_4393">Regards</div></div></body><=
/html>

------=_Part_12677278_2022628727.1456155669935--
