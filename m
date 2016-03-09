Return-Path: <steve.rae@broadcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E900CE0088B; Wed,  9 Mar 2016 10:12:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.178 listed in list.dnswl.org]
Received: from mail-lb0-f178.google.com (mail-lb0-f178.google.com
	[209.85.217.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 773C3E00443
	for <yocto@yoctoproject.org>; Wed,  9 Mar 2016 10:12:32 -0800 (PST)
Received: by mail-lb0-f178.google.com with SMTP id bc4so77268917lbc.2
	for <yocto@yoctoproject.org>; Wed, 09 Mar 2016 10:12:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
	h=mime-version:date:message-id:subject:from:to;
	bh=7YYFpyCHq5F1iUoruJbdqDsZediVdRE+1VaV1BANzhA=;
	b=hhKk7WQOuNux5KGzeFOab+0M9kwx8iL9E45XhKwnRPukxDei/5CSZwGcWxKPTwJUL/
	pLL6QM9fvxB1rl6y7TtwqiXH7egOqF64iKLtpMeZwXSjS+or9HukAfMnRCt5e3XhmDhx
	SNDgrw1St40URzlTxXF81nqKox+CEZiSaL58s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
	bh=7YYFpyCHq5F1iUoruJbdqDsZediVdRE+1VaV1BANzhA=;
	b=jttUXVXieN8FH7utlsO/zI1OSmkY6CGw6DX8VYbRKddxL64QxEw/Zp9999OGfsi/FU
	nqzkbTjC0EIsYqePd+tLf13gH1/PF43psm9DhkIWj0zy1CiUQZancyTRfH4e3VT4r1ML
	udB2isl7feGiDT3C1iC1AmGKD5RFs72uO97dNUouq3XvNg55H9QHg+dQe1SCvyJ6LFSU
	itkIx3fnCr0RTvkCDssKRI6lX0JE2xW9p6EMVu6l565p2lAOyn0qc23yW/cbWmSYZwD1
	7qM9DlFRHwvOoGl+b4c4EFqLcGX/xnQzils4OMMdiiESZ10VhbmCJsoWHlJpz0O36C50
	3gKg==
X-Gm-Message-State: AD7BkJLNyylQTsvLLtP3rdK5/LXrQukLwP8nEc3ulSatC0sSld7miKrqw4E5h8iHacn/jkZuSiv7Q/NiSMthR+1S
MIME-Version: 1.0
X-Received: by 10.112.227.71 with SMTP id ry7mr8310885lbc.50.1457547150943;
	Wed, 09 Mar 2016 10:12:30 -0800 (PST)
Received: by 10.25.207.196 with HTTP; Wed, 9 Mar 2016 10:12:30 -0800 (PST)
Date: Wed, 9 Mar 2016 10:12:30 -0800
Message-ID: <CAM7GXo=mfAE5p4tiiYk6wrpSXU6XQTdY7edQJ+kgew-ch9OLZQ@mail.gmail.com>
From: Steve Rae <steve.rae@broadcom.com>
To: yocto@yoctoproject.org
Subject: kernel: "devtool modify -x" issue
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
X-List-Received-Date: Wed, 09 Mar 2016 18:12:38 -0000
Content-Type: multipart/alternative; boundary=001a11347e8e2d7e2f052da1a4fe

--001a11347e8e2d7e2f052da1a4fe
Content-Type: text/plain; charset=UTF-8

( using jethro )

I have a 'linux-yocto-custom' layer which builds successfully; then I run:
    devtool modify -x linux-yocto-custom ../../poky-dev/kernel
>> I see a line:
  Cloning into '/tmp/devtoolfgiLXr/workdir/source'...

Then I run:
    devtool build linux-yocto-custom
>> it reports the following:

Log data follows:
| DEBUG: Executing shell function do_kernel_configme
| NOTE: kernel configme
| [INFO] Configuring target/machine combo: "standard/bcmjava"
| [ERROR] frag
/tmp/devtoolfgiLXr/workdir/source/.meta/cfg/scratch/obj/tmp/devtoolfgiLXr/workdir/defconfig
does not exist
| [ERROR] No configuration fragments found, this typically is a
misconfigured BSP.
|         Check that fragments (or defconfigs) are referenced by the board
description.
| config of "standard/bcmjava" failed
| WARNING: exit code 1 from a shell command.

which is true, because "devtool modify -x" deletes the temp directory
("/tmp/devtoolfgiLXr") that it used to create this specified workspace....

Any ideas?
Thanks is advance, Steve

--001a11347e8e2d7e2f052da1a4fe
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">( using jethro )<div><br><div>I have a &#39;linux-yocto-cu=
stom&#39; layer which builds successfully; then I run:</div><div><span styl=
e=3D"font-size:11pt;font-family:Calibri,sans-serif">=C2=A0 =C2=A0 devtool m=
odify -x linux-yocto-custom
../../poky-dev/kernel</span><br></div><div><span style=3D"font-size:11pt;fo=
nt-family:Calibri,sans-serif">&gt;&gt; I see a line:</span></div><div><div =
style=3D""><font face=3D"Calibri, sans-serif"><span style=3D"font-size:14.6=
667px">=C2=A0 Cloning into &#39;/tmp/devtoolfgiLXr/workdir/source&#39;...</=
span></font></div><div style=3D""><font face=3D"Calibri, sans-serif"><span =
style=3D"font-size:14.6667px"><br></span></font></div><div style=3D""><font=
 face=3D"Calibri, sans-serif"><span style=3D"font-size:14.6667px">Then I ru=
n:</span></font></div><div style=3D""><font face=3D"Calibri, sans-serif"><s=
pan style=3D"font-size:14.6667px">=C2=A0 =C2=A0 devtool build linux-yocto-c=
ustom</span><br></font></div><div style=3D""><font face=3D"Calibri, sans-se=
rif"><span style=3D"font-size:14.6667px">&gt;&gt; it reports the following:=
</span></font></div><div style=3D""><font face=3D"Calibri, sans-serif"><spa=
n style=3D"font-size:14.6667px"><br></span></font></div><div style=3D""><fo=
nt face=3D"Calibri, sans-serif"><span style=3D"font-size:14.6667px"><div>Lo=
g data follows:</div><div>| DEBUG: Executing shell function do_kernel_confi=
gme</div><div>| NOTE: kernel configme</div><div>| [INFO] Configuring target=
/machine combo: &quot;standard/bcmjava&quot;</div><div>| [ERROR] frag /tmp/=
devtoolfgiLXr/workdir/source/.meta/cfg/scratch/obj/tmp/devtoolfgiLXr/workdi=
r/defconfig does not exist</div><div>| [ERROR] No configuration fragments f=
ound, this typically is a misconfigured BSP.</div><div>| =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 Check that fragments (or defconfigs) are referenced by the board=
 description.</div><div>| config of &quot;standard/bcmjava&quot; failed</di=
v><div>| WARNING: exit code 1 from a shell command.</div><div><br></div><di=
v>which is true, because &quot;devtool modify -x&quot; deletes the temp dir=
ectory (&quot;/tmp/<span style=3D"font-size:14.6667px">devtoolfgiLXr&quot;)=
 that it used to create this specified workspace....</span></div><div><span=
 style=3D"font-size:14.6667px"><br></span></div></span></font></div><div st=
yle=3D"font-family:Calibri,sans-serif;font-size:11pt">Any ideas?</div></div=
></div><div style=3D"font-family:Calibri,sans-serif;font-size:11pt">Thanks =
is advance, Steve</div></div>

--001a11347e8e2d7e2f052da1a4fe--
