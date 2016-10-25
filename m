Return-Path: <jopoulin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 219B2E00951; Mon, 24 Oct 2016 21:29:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jopoulin[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.52 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.52 listed in list.dnswl.org]
Received: from mail-wm0-f52.google.com (mail-wm0-f52.google.com [74.125.82.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36E85E00912
	for <yocto@yoctoproject.org>; Mon, 24 Oct 2016 21:29:48 -0700 (PDT)
Received: by mail-wm0-f52.google.com with SMTP id c78so139036358wme.0
	for <yocto@yoctoproject.org>; Mon, 24 Oct 2016 21:29:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=YClED/USLphNJO8kqNXtdQ2D7TKP4rjJyR6iJzfBcV0=;
	b=AS+kquJhSB5cbRjMPF25QGciPm0Ph9AVCGoWr5ZjiJLUtkDt023ArepMJb0HSUCJG2
	80tw7JVRE4qWAMczhxvfR+BwiXtEi8CdZkx//Xz+cMQhFBop72sTNArmvTgVEEvHiQen
	CCsxBv6mkmbulPa6/fJ0sc+c0TAsMX0QPzAavHuSvjjoALUziNTVAqW0boLtfc16+0ec
	6ptzdXhI7FYI6gV+/3NswsUlMLPEYSP7G0/CUc3D92NAUgaBQCXuIUvKAvRq1RIPOx8G
	7wSgnDH9WU7afTzocErzbM3JAlTd1NL/sJDn3q8AUqxHY5gE5VZtjWo9vkj+spvZfX8X
	eUvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=YClED/USLphNJO8kqNXtdQ2D7TKP4rjJyR6iJzfBcV0=;
	b=ml1BDLPXgaIiJxbTG0X5cuBYqGPrkOTyCGPuXtvkuskNxKCLLpWtVzOArJa6Sl+eF0
	deqs1rnjkXSB4pbTkBXTFbxcKY+A/Mnwv5HXCRK1TaV0l2Ktx4/3tbogBQ3ENyOELQn4
	tqjSVX4Ao0I7T068sXNOrc3sFVQh84DgqJwbHhtkDy4CIs1fCsZbJNs0W4UFyOuVWFgo
	irBlapHDAMzHEguhf5AD64RxFHAWopHHzJN/Mh7YxWupz2KGB1s+SxxPWqSNQ2g5ijzY
	ruwcjEHfx3fT5aiSR0GTn15N2vXFPHPxNdM6n0SOiymPUNF4JAWOS/YgbHJrFRrDGNBc
	kjVw==
X-Gm-Message-State: ABUngvdA7qCRmvuqvKhb/c7mt/ILFzunuPinhz+ZiEaNHTb560f3E9yrnxXStoCUhN0CSErR75JVjC/GFmHLXQ==
X-Received: by 10.28.68.8 with SMTP id r8mr901497wma.28.1477369787646; Mon, 24
	Oct 2016 21:29:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.182.20 with HTTP; Mon, 24 Oct 2016 21:29:47 -0700 (PDT)
From: Jonathan Poulin <jopoulin@gmail.com>
Date: Tue, 25 Oct 2016 00:29:47 -0400
Message-ID: <CAGMz-a6-5hKCJ2E1f2Z2jtawWH6n8kguUC2iqWcgBbGKEb-czA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: New bitbake task dependency
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
X-List-Received-Date: Tue, 25 Oct 2016 04:29:50 -0000
Content-Type: multipart/alternative; boundary=001a1148f5d0650729053fa8f519

--001a1148f5d0650729053fa8f519
Content-Type: text/plain; charset=UTF-8

Hello,

I add a new task in my image recipe that inherit of core-image like below :


***************************

do_uimage() {
    cat ${DEPLOY_DIR_IMAGE}/zImage-imx6d-axion.dtb >>
${DEPLOY_DIR_IMAGE}/zImage-initramfs-${MACHINE}.bin
    mkimage -A arm -O linux -T kernel -C none -a 0x12000000 -e 0x12000000
-n "Linux Kernel" -d ${DEPLOY_DIR_IMAGE}/zImage-initramfs-${MACHINE}.bin
${DEPLOY_DIR_IMAGE}/uImage
    md5sum ${DEPLOY_DIR_IMAGE}/uImage | cut -d' ' -f1 >
${DEPLOY_DIR_IMAGE}/uMD5
}

addtask do_uimage after do_deploy before do_build

***************************

The task is run the first time I call  "bitbake prod-image" but for the
subsequent call the task uimage isn't called. I have to call "bitbake -c
uimage prod-image" to run it.

How can I make this new task run each time the task do_deploy need to be
run?

thanks for your help
Jonathan

--001a1148f5d0650729053fa8f519
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div>Hello,<br><br></div>I add a new t=
ask in my image recipe that inherit of core-image like below :<br><br><br>*=
**************************<br><br>do_uimage() {<br>=C2=A0=C2=A0=C2=A0 cat $=
{DEPLOY_DIR_IMAGE}/zImage-imx6d-axion.dtb &gt;&gt; ${DEPLOY_DIR_IMAGE}/zIma=
ge-initramfs-${MACHINE}.bin<br>=C2=A0=C2=A0=C2=A0 mkimage -A arm -O linux -=
T kernel -C none -a 0x12000000 -e 0x12000000 -n &quot;Linux Kernel&quot; -d=
 ${DEPLOY_DIR_IMAGE}/zImage-initramfs-${MACHINE}.bin ${DEPLOY_DIR_IMAGE}/uI=
mage<br>=C2=A0=C2=A0=C2=A0 md5sum ${DEPLOY_DIR_IMAGE}/uImage | cut -d&#39; =
&#39; -f1 &gt; ${DEPLOY_DIR_IMAGE}/uMD5<br>}<br><br>addtask do_uimage after=
 do_deploy before do_build<br><br>***************************<br><br></div>=
The task is run the first time I call=C2=A0 &quot;bitbake prod-image&quot; =
but for the subsequent call the task uimage isn&#39;t called. I have to cal=
l &quot;bitbake -c uimage prod-image&quot; to run it.<br><br></div>How can =
I make this new task run each time the task do_deploy need to be run?<br><b=
r></div>thanks for your help<br></div>Jonathan <br></div>

--001a1148f5d0650729053fa8f519--
