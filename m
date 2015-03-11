Return-Path: <vaduvajanalexandru@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E8236E00810; Wed, 11 Mar 2015 16:28:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vaduvajanalexandru[at]yahoo.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [98.136.218.207 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm12-vm8.bullet.mail.gq1.yahoo.com
	(nm12-vm8.bullet.mail.gq1.yahoo.com [98.136.218.207])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C607E0034E
	for <yocto@yoctoproject.org>; Wed, 11 Mar 2015 16:28:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1426116489; bh=o902CMCs/5662sPjFwztVG2mqjlUTp6vAx+Muyiw2ro=;
	h=Date:From:Reply-To:To:Cc:In-Reply-To:References:Subject:From:Subject;
	b=iK5VN24XaOG2rE6JbfeuQHHbaMEtZBXVRr/b+9DRNs1JzvI4645nCZL3PPigQ2ZFEJ/mV4oPBSwj8Xyi6CoKLVolUkZg0q8vVGiFe0ssn4eHl83mErz0WwMGfhbqrILcJ78Om6Rhu7GTKH2CBG6587LaqKE994EYOXMAzuoBEVaJFwhEvB6GuVET9/9cDXCIITMD+HIgfJWZWuLiqbYi3wKJqyomIAVgchZ/7ttLJUX3WsuOJD9D261a+sq9FxTv0f6SyLBHcIGHdWNhVJFBA40xvxwaVj3aTQkGwsoe+OyzV4PdvuUaa86CBY6JOyOea7gHe5DYT71Be7NeSw9gig==
Received: from [98.137.12.175] by nm12.bullet.mail.gq1.yahoo.com with NNFMP;
	11 Mar 2015 23:28:09 -0000
Received: from [98.138.226.162] by tm14.bullet.mail.gq1.yahoo.com with NNFMP;
	11 Mar 2015 23:28:09 -0000
Received: from [127.0.0.1] by omp1063.mail.ne1.yahoo.com with NNFMP;
	11 Mar 2015 23:28:08 -0000
X-Yahoo-Newman-Property: ymail-5
X-Yahoo-Newman-Id: 962576.82561.bm@omp1063.mail.ne1.yahoo.com
X-YMail-OSG: HYMtukcVM1lbVSoP8mt1yzVgoRegMnp7kb_UrNNa5Gj_yaWBvh0gHCguu00GLJI
	paF.4HzyH5CQpMmQFe9sfpQww5b67qSVcKoZW8HArhji8quD.iFyEoF.VnIoxr1LHte2u3mI.l3h
	fM3heGAkbpWRKJ8XUxOj4BC7i6s_TE7qIf8ecTcN0i9FocrwyNIcOlu0vL2TMUW_hUKE_434ADWd
	lwXKEO7qYPI8v0web2GYoQMEapnSRoA7yFHE2FFry2IKp6Dpq72AGU6L4FoVg4nd9i8w4_JVqqzH
	3C5tAYWMskZYtsm3m9QaBsaALZxEWdt5MSZe11NWwCmlhcoNSXqaG_mrI7cTOMAcUtMv7HlnexFK
	tgmtqIUxTDwCmiv_zoqtPim0u_SunmyOZlCqbq0sHrkJkvKoOFIvm_AVQAXE8cR5CO1adveRUGGO
	tXEHHl_Ee9JxTGQ2.3zL9NbH9bkvTQVEnqMkwne9ZLwXECIzs5Ig.eGNJxnU.1VaUuVhKSS08j7U
	R5tEOo3AQ8w--
Received: by 98.138.105.253; Wed, 11 Mar 2015 23:28:08 +0000 
Date: Wed, 11 Mar 2015 23:28:08 +0000 (UTC)
From: Alexandru Vaduva <vaduvajanalexandru@yahoo.com>
To: Sona Sarmadi <sona.sarmadi@enea.com>, 
	"yocto-security@yoctoproject.org" <yocto-security@yoctoproject.org>
Message-ID: <2131862827.2912188.1426116488072.JavaMail.yahoo@mail.yahoo.com>
In-Reply-To: <3230301C09DEF9499B442BBE162C5E48258AD7F4@SESTOEX04.enea.se>
References: <3230301C09DEF9499B442BBE162C5E48258AD7F4@SESTOEX04.enea.se>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: bind: issue in trust anchor management can cause named to crash (CVE-2015-1349)
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Alexandru Vaduva <vaduvajanalexandru@yahoo.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 11 Mar 2015 23:28:14 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_2912187_1378309314.1426116488070"

------=_Part_2912187_1378309314.1426116488070
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Wouldn`t it be better for the bugs to be only mentioned on the security list?It is my opinion that know about a risk before it is fixed could cause more harm then good.What do you thing about this?

Alex Vaduva
 

     On Wednesday, March 11, 2015 10:06 AM, Sona Sarmadi <sona.sarmadi@enea.com> wrote:
   

 Affects version 9.7.0 - 9.10.1-P1. In master we use bind 9.9.5.


// Sona 
-- 
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto


    

------=_Part_2912187_1378309314.1426116488070
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;fo=
nt-size:12px"><div id=3D"yui_3_16_0_1_1426109610777_9421">Wouldn`t it be be=
tter for the bugs to be only mentioned on the security list?</div><div id=
=3D"yui_3_16_0_1_1426109610777_9401" dir=3D"ltr">It is my opinion that know=
 about a risk before it is fixed could cause more harm then good.</div><div=
 id=3D"yui_3_16_0_1_1426109610777_9645" dir=3D"ltr">What do you thing about=
 this?</div><div id=3D"yui_3_16_0_1_1426109610777_9850" dir=3D"ltr"><br></d=
iv><div id=3D"yui_3_16_0_1_1426109610777_9842" dir=3D"ltr"><br></div><div i=
d=3D"yui_3_16_0_1_1426109610777_9843" dir=3D"ltr">Alex Vaduva<br></div><div=
 id=3D"yui_3_16_0_1_1426109610777_9398"><span></span></div> <div class=3D"q=
tdSeparateBR"><br><br></div><div style=3D"display: block;" class=3D"yahoo_q=
uoted"> <div style=3D"font-family: HelveticaNeue, Helvetica Neue, Helvetica=
, Arial, Lucida Grande, sans-serif; font-size: 12px;"> <div style=3D"font-f=
amily: HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans=
-serif; font-size: 16px;"> <div dir=3D"ltr"> <font size=3D"2" face=3D"Arial=
"> On Wednesday, March 11, 2015 10:06 AM, Sona Sarmadi &lt;sona.sarmadi@ene=
a.com&gt; wrote:<br> </font> </div>  <br><br> <div class=3D"y_msg_container=
">Affects version 9.7.0 - 9.10.1-P1. In master we use bind 9.9.5.<br><br><b=
r>// Sona <br>-- <br>_______________________________________________<br>yoc=
to mailing list<br><a ymailto=3D"mailto:yocto@yoctoproject.org" href=3D"mai=
lto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br><a href=3D"https:=
//lists.yoctoproject.org/listinfo/yocto" target=3D"_blank">https://lists.yo=
ctoproject.org/listinfo/yocto</a><br><br><br></div>  </div> </div>  </div> =
</div></body></html>

------=_Part_2912187_1378309314.1426116488070--
