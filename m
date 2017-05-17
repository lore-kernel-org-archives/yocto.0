Return-Path: <abayiz@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 44101E00AF8; Wed, 17 May 2017 08:51:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FORGED_MUA_MOZILLA, FREEMAIL_FROM,
	HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (abayiz[at]yahoo.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0071]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [66.163.189.110 listed in list.dnswl.org]
	*  2.3 FORGED_MUA_MOZILLA Forged mail pretending to be from Mozilla
Received: from sonic306-48.consmr.mail.ne1.yahoo.com
	(sonic306-48.consmr.mail.ne1.yahoo.com [66.163.189.110])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6926E00ADB
	for <yocto@yoctoproject.org>; Wed, 17 May 2017 08:51:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1495036311; bh=7uouiwYm4EHB9WK8OQgo8CoYQo2VXz6HrAsGdlqB0yc=;
	h=Date:From:Reply-To:To:Subject:References:From:Subject;
	b=FBw6EfJRfOZuH8Tk5WKykdnpTfXomSe5nMBNExf8hvhLoi6k34Guxqef00mTI6F6Y6MN2MVSDtU0Uw4pKhodoZMy6Ei6vElv3ffzy9ACANxZ7OP3TJjN0Nzyfhv7glDRV5GFrWKMoRqjXHeVK6v2+NY399BTetVAh3l8FugUXZ0XFdvO2gjiLeNzSM5h/DzJyxHH+vHdu1JcvwrHZ6AJJdonUt+DmlSm6esFUmaKAI8GoQiXH0tcUn44z0pkJg0vAe1UdaR+oz6bhYJgAkNtRIGrw6k34nfhquVIsEzBVbqAvYNFbCiil1cbGSKvPSjEdyqQ7lAYR0o6tbTDwxQsyg==
X-YMail-OSG: mmkM8lAVM1m5NxEYBCkGvX_bqQjpALriiO9RqpkFolxRNg8APGAkyVSIg5m6sqa
	3onyXyxF9YQvgtF27q85GEbhH0uKSyJ_XJBaI3SklnFRoyYoIJeX6dCi_UxeCKnCn4gW3GGbLVth
	S0dqVIpmlZ1OTTZmTdTTxhxMCfEFu_.zvTpQUJIY1hwy8_xMBY12vxXWdfJbppkF9cacfDZHBFrr
	sonRFFusrkBg8qbxkzUZCjWxxSxYjZHlQ1XKN95qbG9.Gw0oKKkWzlMRgBwd_G58bUpZSL_S5LqO
	J0iaPMakCf5LBAib1DZd5VBYjjoN3IlP_ZEzbzpyQnAA71U6i.DPZE8vpt_mVg.9BGcPB6sNSWW3
	ZulQC4Q_AQLL.yTv4GvQ7hd.MBwMw.ojtgOZBULX5tNfO.OAonUJ1YZ._wTNJAV7elcMxA7zhdv4
	6Sd_644Yw1YJTl5rP3280VA9au0_TGCTBZFm_GN8r_nZVtNAl74P7_x.bh84X_GL3G6BvStSDY5O
	vlj3XqC4enfhU2ovLjZF2N7pCpQ--
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic306.consmr.mail.ne1.yahoo.com with HTTP;
	Wed, 17 May 2017 15:51:51 +0000
Date: Wed, 17 May 2017 15:47:44 +0000 (UTC)
From: Abayiz <abayiz@yahoo.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <913930800.1703704.1495036064370@mail.yahoo.com>
MIME-Version: 1.0
References: <913930800.1703704.1495036064370.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.9552 YahooMailNeo Mozilla/5.0 (X11; Ubuntu;
	Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0
Subject: How to install libraries directy to the target during image building?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Abayiz <abayiz@yahoo.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 17 May 2017 15:51:55 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_1703703_956244901.1495036064368"

------=_Part_1703703_956244901.1495036064368
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hello all, 

I'm new to Yocto. On my Ubuntu host machine, I can install my desired package (namely 'dlib') using pip3. For instance in Ubuntu: 

pip3 install dlib
Now I want to install this 'dlib' package on the qemux86. I've successfully added pip3 on it. What should I do so that when I build my image, the generated image will contain 'dlib'? Is there any way to directly package the 'dlib' while building the image?

Thank you in advance. 
Abayiz


------=_Part_1703703_956244901.1495036064368
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div style=3D"color:#000; background-color:#fff; f=
ont-family:=E6=A8=99=E6=A5=B7=E9=AB=94, dfkai-sb;font-size:16px"><div id=3D=
"yui_3_16_0_ym19_1_1495035711409_4245">Hello all, <br></div><div id=3D"yui_=
3_16_0_ym19_1_1495035711409_4394"><br></div><div id=3D"yui_3_16_0_ym19_1_14=
95035711409_4411">I'm new to Yocto. On my Ubuntu host machine, I can instal=
l my desired package (namely 'dlib') using pip3. For instance in Ubuntu: <b=
r></div><div dir=3D"ltr" id=3D"yui_3_16_0_ym19_1_1495035711409_4412"><br></=
div><div dir=3D"ltr" id=3D"yui_3_16_0_ym19_1_1495035711409_4413">pip3 insta=
ll dlib</div><div dir=3D"ltr" id=3D"yui_3_16_0_ym19_1_1495035711409_4414"><=
br></div><div dir=3D"ltr" id=3D"yui_3_16_0_ym19_1_1495035711409_4379">Now I=
 want to install this 'dlib' package on the qemux86. I've successfully adde=
d pip3 on it. What should I do so that when I build my image, the generated=
 image will contain 'dlib'? Is there any way to directly package the 'dlib'=
 while building the image?<br></div><div dir=3D"ltr" id=3D"yui_3_16_0_ym19_=
1_1495035711409_4376"><br></div><div dir=3D"ltr" id=3D"yui_3_16_0_ym19_1_14=
95035711409_4415">Thank you in advance. <br></div><div dir=3D"ltr" id=3D"yu=
i_3_16_0_ym19_1_1495035711409_4393">Abayiz<br></div><div dir=3D"ltr" id=3D"=
yui_3_16_0_ym19_1_1495035711409_4375"><br></div></div></body></html>

------=_Part_1703703_956244901.1495036064368--
