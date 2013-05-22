Return-Path: <varun292006@gmail.com>
Received: from mail-pa0-f45.google.com (mail-pa0-f45.google.com
	[209.85.220.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D37B4E013E3
	for <yocto@yoctoproject.org>; Wed, 22 May 2013 10:06:22 -0700 (PDT)
Received: by mail-pa0-f45.google.com with SMTP id lj1so2019587pab.4
	for <yocto@yoctoproject.org>; Wed, 22 May 2013 10:06:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=ibq3ufwOdw+KsytonpP2gT8drfp+Sv3/yh59V3MP/w4=;
	b=WpFWJ57cd61CUV+G2xoNvbBNbInCcpAVUqBZkWgZVoIyfkeEpwH5JGY1IPq/TtR6hT
	yOraeIHQsfeq1rn6ynXxFxvM+FUTF295r/fKnDLyCwYbFkpBR8lN0Gg0BzP8GMEMH5o3
	LEEtcJDQYI+VNymhiWo4VIRlI/M1K+fRuE6HQpXfpM2lHWklub619Qwg5+HAoGsHrF5/
	RypJWQ48IO5DlEMoBT+VNK+aybpkB74+H+PRYP32stw11A4KNpH6VDzixnxKzMja0sCp
	AWJcAibq06d2m5KRyrn3YU6+++RmVoFYfVu4tDp3sQ/xgxLZdpmQq87E2Ibadlffa8Bq
	eGgA==
MIME-Version: 1.0
X-Received: by 10.68.171.196 with SMTP id aw4mr8723870pbc.78.1369242382709;
	Wed, 22 May 2013 10:06:22 -0700 (PDT)
Received: by 10.68.5.230 with HTTP; Wed, 22 May 2013 10:06:22 -0700 (PDT)
In-Reply-To: <CAP71WjzJjYu5Ft2hAkPs77RRf6=mbkoFbFK+XGTNnW39DFxyJg@mail.gmail.com>
References: <CAGxOggGKPW3WQcYbo0vim833ErrjGk8fXQyyiinB56jDjvKWVg@mail.gmail.com>
	<CAP71WjzJjYu5Ft2hAkPs77RRf6=mbkoFbFK+XGTNnW39DFxyJg@mail.gmail.com>
Date: Wed, 22 May 2013 22:36:22 +0530
Message-ID: <CAGxOggF_iWKtZcpmvqtuvBq6unr5S7tU9fHp+Hqwg2ZH1aV5nA@mail.gmail.com>
From: varun bhatnagar <varun292006@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: runqemu: vnc server running on ::1:5900
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
X-List-Received-Date: Wed, 22 May 2013 17:06:22 -0000
Content-Type: multipart/alternative; boundary=047d7bacb516d539c604dd5195b8

--047d7bacb516d539c604dd5195b8
Content-Type: text/plain; charset=ISO-8859-1

Thanks for the reply Nicolas....
But neither I am getting any qemu window in GUI nor any console. It is
getting stuck there itself (as shown in the screenshot). But in the video
which is available on the yocto site, when runqemu command is given one
qemu console gets launched where in user can see the image getting booted.
But in my case I am not getting anything and it is getting stuck.


On Wed, May 22, 2013 at 10:21 PM, Nicolas Dechesne <
nicolas.dechesne@linaro.org> wrote:

>
> On Wed, May 22, 2013 at 6:45 PM, varun bhatnagar <varun292006@gmail.com>wrote:
>
>> I have successfully created a PowerPC image using* bitbake -k
>> core-image-minimal*.
>> When I am trying to boot it using *runqemu qemuppc* I am getting a
>> message saying* vnc server running on ::1:5900.*
>>
>> I searched on internet and it was written that to resolve this error *SDL
>> *and *SDL-devel* package should be installed.
>>
>> I have installed these packages but it did not work. Still I am getting
>> the same message.
>> Can anyone help me out with this. Below is the screenshot of message.
>>
>
> it sounds normal to me. that message means that qemu successfully started
> a VNC server. you now need to connect to the server to see the output. that
> is handy when using graphical interface. if you have no UI, you can use the
> 'nographic' option to runqemu, and it won't use VNC, and you will get the
> login console in your terminal.
>
>
>
>

--047d7bacb516d539c604dd5195b8
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks for the reply Nicolas....<div>But neither I am gett=
ing any qemu window in GUI nor any console. It is getting stuck there itsel=
f (as shown in the screenshot). But in the video which is available on the =
yocto site, when runqemu command is given one qemu console gets launched wh=
ere in user can see the image getting booted. But in my case I am not getti=
ng anything and it is getting stuck.</div>
</div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Wed,=
 May 22, 2013 at 10:21 PM, Nicolas Dechesne <span dir=3D"ltr">&lt;<a href=
=3D"mailto:nicolas.dechesne@linaro.org" target=3D"_blank">nicolas.dechesne@=
linaro.org</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_extra">=
<div><div class=3D"h5"><br><div class=3D"gmail_quote">On Wed, May 22, 2013 =
at 6:45 PM, varun bhatnagar <span dir=3D"ltr">&lt;<a href=3D"mailto:varun29=
2006@gmail.com" target=3D"_blank">varun292006@gmail.com</a>&gt;</span> wrot=
e:<br>


<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div>I have successfully created a PowerPC i=
mage using<b> bitbake -k core-image-minimal</b>.</div><div>When I am trying=
 to boot it using <b>runqemu qemuppc</b> I am getting a message saying<b> v=
nc server running on ::1:5900.</b></div>



<div><br></div><div>I searched on internet and it was written that to resol=
ve this error <b>SDL </b>and <b>SDL-devel</b> package should be installed.<=
/div><div><br></div><div>I have installed these packages but it did not wor=
k. Still I am getting the same message.</div>



<div>Can anyone help me out with this. Below is the screenshot of message.<=
/div><div></div></blockquote></div><br></div></div>it sounds normal to me. =
that message means that qemu successfully started a VNC server. you now nee=
d to connect to the server to see the output. that is handy when using grap=
hical interface. if you have no UI, you can use the &#39;nographic&#39; opt=
ion to runqemu, and it won&#39;t use VNC, and you will get the login consol=
e in your terminal.=A0</div>


<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra"><br></div><=
div class=3D"gmail_extra"><br></div></div>
</blockquote></div><br></div>

--047d7bacb516d539c604dd5195b8--
