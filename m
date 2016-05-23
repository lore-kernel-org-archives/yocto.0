Return-Path: <alvaromartineztovar@yahoo.es>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4B735E00CD4; Mon, 23 May 2016 04:36:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.3 required=5.0 tests=BAYES_05,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alvaromartineztovar[at]yahoo.es)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.82.96.236 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.5 BAYES_05 BODY: Bayes spam probability is 1 to 5%
	*      [score: 0.0101]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm19-vm3.bullet.mail.ir2.yahoo.com
	(nm19-vm3.bullet.mail.ir2.yahoo.com [212.82.96.236])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5036CE00C8F
	for <yocto@yoctoproject.org>; Mon, 23 May 2016 04:36:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.es; s=s2048;
	t=1464003387; bh=NWvXqPYoGDxc9LpL55CNRdM/ZyTVVu8/pfXQj+w/tMk=;
	h=Date:From:Reply-To:To:In-Reply-To:References:Subject:From:Subject;
	b=k4DMeO8xU5soOVTuz+LBf6UqyoUYZ6+p87JzXpu9ABXlJYsmNAJ8lI4zyikPWY1sjvUJlB9jKHMXiyrMtK6VE8KYHFoVBw8l+QYQrhVWD4cSGfpSHRFPFB8G5CFuWVQbWIcETJN1sG5D3fqdFnU/eXdza+w+vUUWvEC546mqe7xy5vxon8hYAK8qBwDr8mD/2C4QCDx8smxG45ZL48A/jGZoULncfU4nDHe5Ao0Q7NQ+mzMBAMzdGk1WdaIsgu/XautHhAzBiJv/zkFFNjuFL2Q4YqD9xTtV9pUAZc+ZtIz6nAyNPbqZEaZhpo7YnUn+U9+2A2lGccXrXxxLntRrnw==
Received: from [212.82.98.55] by nm19.bullet.mail.ir2.yahoo.com with NNFMP;
	23 May 2016 11:36:27 -0000
Received: from [212.82.98.70] by tm8.bullet.mail.ir2.yahoo.com with NNFMP;
	23 May 2016 11:36:27 -0000
Received: from [127.0.0.1] by omp1007.mail.ir2.yahoo.com with NNFMP;
	23 May 2016 11:36:27 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 679718.34419.bm@omp1007.mail.ir2.yahoo.com
X-YMail-OSG: pShPGhwVM1kdlgXxiRb8G9ampvZ0vZ7.iC0iS5frQcv4S6QrepvDidj.2riQ4xz
	x23KAp9qAajoQRYvI8ZDbd2_wxA.q8WZUNv_1h8I4N.B6GQKjdVl8Hph29UtT5H6WyBnUYk20sWg
	D0MAaoeo2_7ZFpwbNFipCM9rbu00llNovGXVsriiEeivZO0ocrKKQ0sRileIGJD.Xn40DjsOhqiG
	KIRKWuvXadolnM.taynYV0Bm.bZekV1pGQ3QFtnb6KKBxrz5FJ_sHjhhnx0KC7NUfB9GU4cCia3L
	PrkQKTZxWj12OSXhEhkCR1JBv8DitjfeFU3vUGBn2ZlQ_1tOUzEuvIbYcVl5RLCh_HANLmM5vzSX
	XebeC7HpQWf8CZJj_aIa_HOk_ZRMRgbFyQa_0CXHV89pv94br2t.SzvfrahjPcsELQXrZNsxlDup
	4WaXU9c7sMWI4WtbZdfVtbzWLNmeNWOSkzVkzHiZs2Eg398xo2PAychJP7GhY1FFqZJWQ295PXS0
	055tc8GRGjJnuRHs4cFqPXttR3t0nNU2k41.0vftp9g--
Received: from jws11132.mail.ir2.yahoo.com by sendmailws161.mail.ir2.yahoo.com;
	Mon, 23 May 2016 11:36:26 +0000; 1464003386.881
Date: Mon, 23 May 2016 11:36:26 +0000 (UTC)
From: Alvaro Martinez Tovar <alvaromartineztovar@yahoo.es>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <2028737853.1706172.1464003386492.JavaMail.yahoo@mail.yahoo.com>
In-Reply-To: <CAC2M0xUK2o6Muq028jsRTqcULQT8dtAKK3jfP6BUpFJTpMCTmw@mail.gmail.com>
References: <CAC2M0xUK2o6Muq028jsRTqcULQT8dtAKK3jfP6BUpFJTpMCTmw@mail.gmail.com>
MIME-Version: 1.0
Subject: add generic startup file to yocto image
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Alvaro Martinez Tovar <alvaromartineztovar@yahoo.es>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 23 May 2016 11:36:31 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_1706171_234957405.1464003386487"

------=_Part_1706171_234957405.1464003386487
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Dear all,until now I have followed a "manual" methodology to add script to startup on system boot:- create sh file- made it executable and copy it to /etc/init.d- add it with update-rc.d my-startup-file.sh defaults 99 to be executed just before login prompt.What should I do in order to add a generic my-startup-file.sh to /etc/init.d and the corresponding S and K file to rcX.d directories?Thank you very much for your help!BR,alvaro

   

------=_Part_1706171_234957405.1464003386487
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div style=3D"color:#000; background-color:#fff; f=
ont-family:HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, =
sans-serif;font-size:16px"><div id=3D"yiv8452554111"><div id=3D"yui_3_16_0_=
ym19_1_1463985296296_40401"><div class=3D"yiv8452554111y_msg_container" id=
=3D"yiv8452554111yui_3_16_0_ym19_1_1463985296296_39080"><div id=3D"yiv84525=
54111yui_3_16_0_ym19_1_1463985296296_39082"><span></span></div><div id=3D"y=
ui_3_16_0_ym19_1_1463985296296_41617"><font face=3D"verdana, helvetica, san=
s-serif">Dear all,</font></div><div id=3D"yui_3_16_0_ym19_1_1463985296296_4=
1855" dir=3D"ltr"><font face=3D"verdana, helvetica, sans-serif">until now I=
 have followed a "manual" methodology to add script to startup on system bo=
ot:</font></div><div id=3D"yui_3_16_0_ym19_1_1463985296296_41615" dir=3D"lt=
r"><font face=3D"verdana, helvetica, sans-serif">- create sh file</font></d=
iv><div id=3D"yui_3_16_0_ym19_1_1463985296296_41613" dir=3D"ltr"><font face=
=3D"verdana, helvetica, sans-serif">- made it executable and copy it to /et=
c/init.d</font></div><div id=3D"yui_3_16_0_ym19_1_1463985296296_41594" dir=
=3D"ltr"><font face=3D"verdana, helvetica, sans-serif">- add it with update=
-rc.d my-startup-file.sh defaults 99<code> to be executed just before login=
 prompt.</code></font></div><div id=3D"yui_3_16_0_ym19_1_1463985296296_4276=
3" dir=3D"ltr"><font face=3D"verdana, helvetica, sans-serif"><code id=3D"yu=
i_3_16_0_ym19_1_1463985296296_43881">What should I do in order to add a gen=
eric my-startup-file.sh to /etc/init.d and the corresponding S and K file t=
o rcX.d directories?</code></font></div><div id=3D"yui_3_16_0_ym19_1_146398=
5296296_43878" dir=3D"ltr"><font face=3D"verdana, helvetica, sans-serif"><c=
ode id=3D"yui_3_16_0_ym19_1_1463985296296_43877">Thank you very much for yo=
ur help!</code></font></div><div id=3D"yui_3_16_0_ym19_1_1463985296296_4387=
5" dir=3D"ltr"><font face=3D"verdana, helvetica, sans-serif"><code>BR,</cod=
e></font></div><div id=3D"yui_3_16_0_ym19_1_1463985296296_43873" dir=3D"ltr=
"><font face=3D"verdana, helvetica, sans-serif"><code>alvaro<b><br></b></co=
de></font></div><div id=3D"yui_3_16_0_ym19_1_1463985296296_41592" dir=3D"lt=
r"><br></div></div></div></div><div id=3D"yui_3_16_0_ym19_1_1463985296296_4=
0394" class=3D".yiv8452554111yahoo_quoted"><div id=3D"yiv8452554111yui_3_16=
_0_ym19_1_1463985296296_39071" style=3D"font-family:HelveticaNeue, Helvetic=
a Neue, Helvetica, Arial, Lucida Grande, sans-serif;font-size:16px;"><div i=
d=3D"yiv8452554111yui_3_16_0_ym19_1_1463985296296_39070" style=3D"font-fami=
ly:HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-ser=
if;font-size:16px;"> </div> </div>  </div></div></body></html>

------=_Part_1706171_234957405.1464003386487--
