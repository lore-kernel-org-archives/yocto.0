Return-Path: <just_abhi22@yahoo.co.in>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D6B96E009A3; Sun, 21 Dec 2014 02:10:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.2 required=5.0 tests=BAYES_20,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLYTO_END_DIGIT,
	HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (just_abhi22[at]yahoo.co.in)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [98.138.121.144 listed in list.dnswl.org]
	* 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
	digit
	*      (abhishek srivastava <just_abhi22[at]yahoo.co.in> )
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.0 BAYES_20 BODY: Bayes spam probability is 5 to 20%
	*      [score: 0.1121]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm50-vm0.bullet.mail.ne1.yahoo.com
	(nm50-vm0.bullet.mail.ne1.yahoo.com [98.138.121.144])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79C86E003E3
	for <yocto@yoctoproject.org>; Sun, 21 Dec 2014 02:10:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.co.in; s=s2048;
	t=1419156642; bh=apv+cz95aJFG7T/G4SOUjOPr23XebjWO/IDzerfxCc0=;
	h=Date:From:Reply-To:To:Subject:From:Subject;
	b=TFYWj9K8limiA1jnZ4HSMc6b0QYd5b6a8As0aBf4WXCtP5ourToLP06c0rKT4nNsvfcNP5E3bmneu7QwIUpHNQLMu6GWz9+9ZDXXZLDho57MsXcCcPSdvWB+PhZ4DPBISYpQ9QcYVPzmGs5yPE7rnOAK0VolBO+FjF3gjf6oBRh0uEbMX2T9RuuUO/3sAQyyYY3UORuHpmGBTpCvKoIUkovYhtFLhxd/ziMGCAoX8NlP9CYF7kmnYSOQgpFpV3D6AvNSdJYfGAkhKvR+lPPZFI4Ka6KU8tcP4O3a0roR42QDFDH7yhHfOjw/YJ8lhwvTqVQN41LdFluKF/qkPynwQQ==
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s2048; d=yahoo.co.in;
	b=H8/czQ+Htl8KxKDhuUxJm3WYcCvJJlJcvyyo9AYPExrM3CmeUTfOdcHWWqfHC3cMBWJI3fiKsm8rzmAQR6q9kmQFZixAccxhO4zuG1zbr/kmTrw1kUMUMDJ6edfPSIMrsw143jjnsaywQwMp38JXwbJ1Dqvy76TuyISLbsCkxR5IOwGHFPbNNNpVfMFvfrfNIQ3LFL+bGh8wYXQPnpESnfU8Vd5YIVLpNOESbdDTz8ShTzDsRzJfidb22EuNrRCW59kD1GN2Fp4Jr/eTA6jDUifVCr+2DKCpg6eAaaZD5ZQJVz6w/siSii+6Xj8p4MBV7+7ephj2lsSExzPgQfZIBg==;
Received: from [127.0.0.1] by nm50.bullet.mail.ne1.yahoo.com with NNFMP;
	21 Dec 2014 10:10:42 -0000
Received: from [98.138.100.112] by nm50.bullet.mail.ne1.yahoo.com with NNFMP;
	21 Dec 2014 10:07:42 -0000
Received: from [106.10.166.126] by tm103.bullet.mail.ne1.yahoo.com with NNFMP;
	21 Dec 2014 10:07:41 -0000
Received: from [106.10.151.239] by tm15.bullet.mail.sg3.yahoo.com with NNFMP;
	21 Dec 2014 10:07:40 -0000
Received: from [127.0.0.1] by omp1023.mail.sg3.yahoo.com with NNFMP;
	21 Dec 2014 10:07:40 -0000
X-Yahoo-Newman-Property: ymail-4
X-Yahoo-Newman-Id: 656671.3547.bm@omp1023.mail.sg3.yahoo.com
X-YMail-OSG: uzESNmEVM1lt3Mz1jKyMUJ1ODOKDIv5SWfS48oj1RCP1BzRItuJE4y2t4QMxiai
	5f9Q3wVhd5cEU3.TXyofcak8amVoLMpzervUh6fYFbvKorw38hY6WfjeKzoD.Ohkpjcj.ehRUWxl
	taGnRAaK39m6oSvNcwh3eDKK6ZZ2RyMOPWpJVk.gqEbIpBrkzUBCmWsj67OCqwuvXI6ZofQicvD1
	Uv0FLHjtawiX9GZX2gpJ8dzGzZWesBg5B5UbZwPHsIOXV8jZ5fwf2HiynEDMGN1UiGEIoRAQ.BbG
	vnEsXJFi_2malFxdJnKD._LUCUdB2TUF_GYf7DaSAc0LsJLfd9UwfRKR.PmAT2xEJV1.Rgw3AQ.D
	W.RP2LwDnocZ43G60JcJqP_RIU0luAIIGp8q4L8YR.XAzGSfJ5WwLWL9sCsmmzH_YWxKPDaVnNq4
	9xy8_sGal_c.3ODKKU8WJNN0Bo_lMNgZWFL5M7lHYujuvve4NqM3wIC7Jv8Y.6dHvkX8co2SgWfL
	xpXy4Q70vVOEN
Received: by 106.10.196.91; Sun, 21 Dec 2014 10:07:40 +0000 
Date: Sun, 21 Dec 2014 10:07:39 +0000 (UTC)
From: abhishek srivastava <just_abhi22@yahoo.co.in>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <1328982841.45313.1419156459385.JavaMail.yahoo@jws10916.mail.sg3.yahoo.com>
MIME-Version: 1.0
Subject: addiding external driver to minimal image
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: abhishek srivastava <just_abhi22@yahoo.co.in>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 21 Dec 2014 10:10:50 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_45312_297671571.1419156459383"

------=_Part_45312_297671571.1419156459383
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi
How to add external driver (ex:TFT driver) to core-minimal-image.=20
After building core -minimal-image, in case I need to add additional packag=
e to existing image, do i need to modify in .conf file and REBUILD IT......=
every time ?

please clarify !

Thank you =C2=A0

------=_Part_45312_297671571.1419156459383
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><body><div style="color:#000; background-color:#fff; font-family:HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, Sans-Serif;font-size:14px"><div id="yui_3_16_0_1_1419155221524_2943"></div><div id="yui_3_16_0_1_1419155221524_2967" style="" class=""><div id="yui_3_16_0_1_1419155221524_2966" style="" class="">Hi<br style="" class="">How to add external driver (ex:TFT driver) to core-minimal-image. <br style="" class=""></div>After
 building core -minimal-image, in case I need to add additional package 
to existing image, do i need to modify in .conf file and REBUILD 
IT......every time ?<br style="" class=""><br style="" class=""></div><div id="yui_3_16_0_1_1419155221524_2968" style="" class="">please clarify !<br style="" class=""><br style="" class=""></div>Thank you <div id="yui_3_16_0_1_1419155221524_2969">&nbsp;</div></div></body></html>

------=_Part_45312_297671571.1419156459383--
