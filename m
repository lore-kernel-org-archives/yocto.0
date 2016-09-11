Return-Path: <guzaszymon@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D8AF8E00E88; Sun, 11 Sep 2016 09:52:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (guzaszymon[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f54.google.com (mail-wm0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E9C6E00E80
	for <yocto@yoctoproject.org>; Sun, 11 Sep 2016 09:52:30 -0700 (PDT)
Received: by mail-wm0-f54.google.com with SMTP id a6so20473061wmc.0
	for <yocto@yoctoproject.org>; Sun, 11 Sep 2016 09:52:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=at3yK1OMoS22mU3UzzMNbR9FzNsk/RNrfX2CTG4m0ic=;
	b=JuDewIYSnLNdNWL9MrwZ2iNLafWnqONs4MKvxK+n3OiI3Ubf2EnniM/8Tvj4mS8qMd
	MQVfDX/wur43XC7275JhhIhQkCRxQzkAoDcBBBdPvFqkdDRzaVqIozH6TVehtxiZV6oC
	tmCx4e/+cTQ1G+jSUZLRzZDoMzV6o6hnhN9NUoyp6FQpPKKgH0lRbXesmXr35HaQUQ3l
	AzgwYEITv2IhQFy61Qlv+SZhY4QQ2jwJaKrN4kQaykc1Cnj1qVk1fInvR9duTOpN/+8J
	VWL3lljltCxGorTz+21I64e/esOLb4B7CTfNFpQA1TVhuay48e9fKS3AxPgA+yxvWlta
	pDcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=at3yK1OMoS22mU3UzzMNbR9FzNsk/RNrfX2CTG4m0ic=;
	b=J+NzLOVu2C9phy/qKzb+/tV4/nJZWUQtoIXw3tj0ATx84YWAmIXXIQK4ShbORPaSRA
	4odyGHFoRT6p/2MtiJbOyJHVcgBabcqvCHo4+9GwxCXUdHvXJWh3lzFBCUTOeZig8git
	eXyj8mFwIuiuFUlxYVKjZEXm3467AKjTaNzH5rHDhUYzvG81jT0eDQ91hTYau261gwGV
	ai8KyeAWJTMcjJNxklfe4naHsEkOhY75svsnAm2JGX4oIpB6zB5GIQlmaE6wuBtR6owM
	4Z3+K54626L+JJEhyj/8kkHKHqadhnZqoAkD8Xsc3DTwjN2BpoUrzPsu9gJIZwdvAJPz
	22dw==
X-Gm-Message-State: AE9vXwNs/VtbjKEaV8qlQnwcjeqSEliKQVZGLgjZ7xlaZdR4H+kUrjDGkLJbMBQuPkIYjBFsmMjDnLF+O8T79w==
X-Received: by 10.194.87.169 with SMTP id az9mr11504161wjb.81.1473612749508;
	Sun, 11 Sep 2016 09:52:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.15.2 with HTTP; Sun, 11 Sep 2016 09:52:28 -0700 (PDT)
From: Szymon Guza <guzaszymon@gmail.com>
Date: Sun, 11 Sep 2016 18:52:28 +0200
Message-ID: <CAO=ipHK=jLMFuUa_h0FMLOy2hAH0p61V0JPswOS4pzQA-xj-LQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: [openCV] error during do_configure
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
X-List-Received-Date: Sun, 11 Sep 2016 16:52:32 -0000
Content-Type: multipart/alternative; boundary=047d7b10c7e7789703053c3e3433

--047d7b10c7e7789703053c3e3433
Content-Type: text/plain; charset=UTF-8

I have added the openCV to my image (core-image-weston with
buildessentials) and during the bitbake error appeard. Do you have any idea
what should I do now to correctly install openCvV to my image?

Part of the error:
| -- Configuring incomplete, errors occurred!
| See also
"/home/admin/Zynq/poky/build/tmp/work/i586-poky-linux/opencv/3.1+gitAUTOINC+92387b1ef8-r0/build/CMakeFiles/CMakeOutput.log".
| See also
"/home/admin/Zynq/poky/build/tmp/work/i586-poky-linux/opencv/3.1+gitAUTOINC+92387b1ef8-r0/build/CMakeFiles/CMakeError.log".
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_configure (log file is located at
/home/admin/Zynq/poky/build/tmp/work/i586-poky-linux/opencv/3.1+gitAUTOINC+92387b1ef8-r0/temp/log.do_configure.30275)
ERROR: Task 278
(/home/admin/Zynq/poky/meta-openembedded/meta-oe/recipes-support/opencv/
opencv_3.1.bb, do_configure) failed with exit code '1'

--047d7b10c7e7789703053c3e3433
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I have added the openCV to my image (core-image-westo=
n with buildessentials) and during the bitbake error appeard. Do you have a=
ny idea what should I do now to correctly install openCvV to my image?<br><=
br></div>Part of the error:<br>| -- Configuring incomplete, errors occurred=
!<br>| See also &quot;/home/admin/Zynq/poky/build/tmp/work/i586-poky-linux/=
opencv/3.1+gitAUTOINC+92387b1ef8-r0/build/CMakeFiles/CMakeOutput.log&quot;.=
<br>| See also &quot;/home/admin/Zynq/poky/build/tmp/work/i586-poky-linux/o=
pencv/3.1+gitAUTOINC+92387b1ef8-r0/build/CMakeFiles/CMakeError.log&quot;.<b=
r>| WARNING: exit code 1 from a shell command.<br>| ERROR: Function failed:=
 do_configure (log file is located at /home/admin/Zynq/poky/build/tmp/work/=
i586-poky-linux/opencv/3.1+gitAUTOINC+92387b1ef8-r0/temp/log.do_configure.3=
0275)<br>ERROR: Task 278 (/home/admin/Zynq/poky/meta-openembedded/meta-oe/r=
ecipes-support/opencv/<a href=3D"http://opencv_3.1.bb">opencv_3.1.bb</a>, d=
o_configure) failed with exit code &#39;1&#39;<br><br><br></div>

--047d7b10c7e7789703053c3e3433--
