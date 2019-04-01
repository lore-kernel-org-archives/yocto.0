Return-Path: <ms.priyanshu.sharma@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2EFE6E00D32; Mon,  1 Apr 2019 00:30:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (ms.priyanshu.sharma[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.174 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com
	[209.85.167.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A51D6E00D20
	for <yocto@yoctoproject.org>; Mon,  1 Apr 2019 00:30:58 -0700 (PDT)
Received: by mail-oi1-f174.google.com with SMTP id x188so6391827oia.13
	for <yocto@yoctoproject.org>; Mon, 01 Apr 2019 00:30:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=kDzLPTla0zqV1/vFgyHQUBD7xJMq3iJtFmLDFEYHtQc=;
	b=YnRK0m8RKv5vDBzZHFG5Y9iqKWUEl0v8Kfp7+6jIQwEyldcb7n+6n2AREDi0xJ5dHg
	SQZDLIJSwN0Z7XDXOkhZu7kQN9q+b+IOUdAnmW/mpzSXFXgjjFDqJqibtIjDDHuRQ9XG
	8lUzyPOtIjd3RhIC/xZYqHs3CfqbGXy5s78h0gnvlWiQb0anfAlYrx1lmdNsQwhlaXBe
	t7szFFFsZlQD0Ifh5+5sZ3vAK5ccHAGJbf+q830iy5aBp27MXlSS4PYdqqac+hbhWKAc
	5VIz3Dzc6Y0YMjoARoXmy1/X3bPuzaOi6G0FUnj+GOKDCa/ftzXLfMCXRgc6qPYRmita
	qChA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=kDzLPTla0zqV1/vFgyHQUBD7xJMq3iJtFmLDFEYHtQc=;
	b=jDuLptxlvbT+x3q6QI+Jq2FyHghTXBTu2NPPTOWyxYk/kp4wBXQZrCiouXOabhgzbg
	KcL80p7Fpp/vtScIymhs8WF+56hvPw4RBxO/jhloqLdKYnJwfR3sq0rVCxslBLUjRfSS
	4vDRVBsba0RSHFncG1MQANwm+a++FpurCqBb/YsfDRw5D5Cc6FZn86KBoQ7TN92JJ0pU
	r63Kk+uyG4nNXoJOVYJj2YsLCmCBdEzh+HrmjB1vyFSJ20ZcMkcproXi4ZiaQ2QCzB/6
	9ykpMe767WvA+UA2r/jf4lGkiIwy6KlXqoa/CxKt644i/d3a3GGLyKBMKMIxsvnkz2jD
	w7dg==
X-Gm-Message-State: APjAAAWGc+YOVMziYXYaBnPe3q4AOKLmsyppn0qZqhZusHvP4iyw5+5S
	igpUQBSr2JSa1ryypBD0uNPQuFq3T0UbX8yi3E/rIKK5
X-Google-Smtp-Source: APXvYqxTVPw5FweMBCEkwf0ip8xUFL6agVLViPQP+LiHhvNtynN29EDmnepvsgcpHN+mnSIAEKyas68c2cbfeEG/l8c=
X-Received: by 2002:aca:ac94:: with SMTP id
	v142mr11881625oie.135.1554103857866; 
	Mon, 01 Apr 2019 00:30:57 -0700 (PDT)
MIME-Version: 1.0
References: <CAA_f9ePWPaPacQkJYsne0F6T-nY5j5epbgjaz+iFrxCAV+476g@mail.gmail.com>
	<CAA_f9ePLea9ewu=UBf5Gv299birMfZps_DK1jOWPd3ZFJu6u5w@mail.gmail.com>
In-Reply-To: <CAA_f9ePLea9ewu=UBf5Gv299birMfZps_DK1jOWPd3ZFJu6u5w@mail.gmail.com>
From: Priyanshu Sharma <ms.priyanshu.sharma@gmail.com>
Date: Mon, 1 Apr 2019 13:00:47 +0530
Message-ID: <CAA_f9eMQyFab=Q55FGP6ZMLqXf18=qqxKy80E8oyCDToK4Pywg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: [meta-qt5][qtwayland]Qtwayland recipe fails with Yocto 2.5
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
X-List-Received-Date: Mon, 01 Apr 2019 07:30:59 -0000
Content-Type: multipart/alternative; boundary="000000000000646b64058573008e"

--000000000000646b64058573008e
Content-Type: text/plain; charset="UTF-8"

The compilation of features.egl was failing because wayland-client.h was
not found in Yocto 2.5 sysroot of QTbase. In yocto 2.2, the sysroot was
common so qtbase was able to find this header even without dependencies.
Adding DEPENDS=wayland in qtbase recipe is compiling qtbase and qtwayland
successfully.

The bitbake did not throw error for missing driver. It just printed it in
logs.

Warm Regards,
Priyanshu Sharma

On Wed, Mar 27, 2019 at 4:20 PM Priyanshu Sharma <
ms.priyanshu.sharma@gmail.com> wrote:

> Found that the missing features.egl is provided by QTBase recipe. And in
> my case, qtbase is not compiling the feature "EGL" and thats why qtwayland
> fails to find it.
>
> egl is not included in PACKAGECONFIG of qtbase recipe. However, it used to
> be enabled with Yocto 2.2.
> Adding it PACKAGECONFIG[eg] of qtbase is not enabling it. How can egl be
> enabled in qtbase?
>
> Warm regards,
> Priyanshu Sharma
>
> On Tue, Mar 19, 2019 at 1:23 PM Priyanshu Sharma <
> ms.priyanshu.sharma@gmail.com> wrote:
>
>> Hi All,
>>
>> I'm consistently getting a build failure after upgrading Poky to 2.5 from
>> 2.2 on qtwayland
>> Yocto recipe from meta-qt5.
>>
>> The error looks like :
>>
>> | Running configuration tests...
>> | Checking for Wayland client library... yes
>> | Checking for Wayland cursor library... yes
>> | Checking for wayland-scanner... yes
>> | Checking for Wayland EGL library... yes
>> | Checking for wayland-server... yes
>> | Done running configuration tests.
>> |
>> | Configure summary:
>> |
>> | Qt Wayland Drivers:
>> |   EGL .................................... no
>> |   Raspberry Pi ........................... no
>> |   XComposite EGL ......................... no
>> |   XComposite GLX ......................... no
>> |   DRM EGL ................................ no
>> |   libhybris EGL .......................... no
>> | Qt Wayland Client ........................ yes
>> | Qt Wayland Compositor .................... yes
>> |
>> | ERROR: Feature 'wayland-egl' was enabled, but the pre-condition 'features.wayland-client && features.opengl && features.egl && libs.wayland-egl' failed.
>> |
>> | ERROR: Feature 'wayland-egl' was enabled, but the pre-condition 'features.wayland-server && features.opengl && features.egl && libs.wayland-egl' failed.
>> |
>> | Check config.log for details.
>> | WARNING: exit code 1 from a shell command.
>> I've checked that only pre-condition "features.egl" is failing.
>> I've my own custom recipe which is providing virtual/egl and is set as PREFERRED_PROVIDER also.
>> What is the missing dependency here when virtual/egl is provided?
>> What exactly is features.egl looking for? ( virtual/egl provides egl.pc )
>> I've not changed anything in meta-qt5 layer. And the version is 5.9.2 QT5. However, is fails with 5.12 also.
>>
>>
>> Warm Regards,
>>
>> Priyanshu Sharma
>>
>>
>>

--000000000000646b64058573008e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">The compilation of features.egl was failing because waylan=
d-client.h was not found in Yocto 2.5 sysroot of QTbase. In yocto 2.2, the =
sysroot was common so qtbase was able to find this header even without depe=
ndencies.=C2=A0<br>Adding DEPENDS=3Dwayland in qtbase recipe is compiling q=
tbase and qtwayland successfully.<br><br>The bitbake did not throw error fo=
r missing driver. It just printed it in logs.<div><br></div><div>Warm Regar=
ds,</div><div>Priyanshu Sharma</div></div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Wed, Mar 27, 2019 at 4:20 PM Priyans=
hu Sharma &lt;<a href=3D"mailto:ms.priyanshu.sharma@gmail.com">ms.priyanshu=
.sharma@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex"><div dir=3D"ltr">Found that the missing features.egl is pr=
ovided by QTBase recipe. And in my case, qtbase is not compiling the featur=
e &quot;EGL&quot; and thats why qtwayland fails to find it.<div><br></div><=
div>egl is not included in PACKAGECONFIG of qtbase recipe. However, it used=
 to be enabled with Yocto 2.2.=C2=A0</div><div>Adding it PACKAGECONFIG[eg] =
of qtbase is not enabling it. How can egl be enabled in qtbase?</div><div><=
br></div><div>Warm regards,</div><div>Priyanshu Sharma</div></div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Mar 19,=
 2019 at 1:23 PM Priyanshu Sharma &lt;<a href=3D"mailto:ms.priyanshu.sharma=
@gmail.com" target=3D"_blank">ms.priyanshu.sharma@gmail.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"=
><div class=3D"gmail-m_3353676281559097329gmail-m_-3634063191643445799gmail=
-gs" style=3D"margin:0px;padding:0px 0px 20px;width:1299.11px"><div class=
=3D"gmail-m_3353676281559097329gmail-m_-3634063191643445799gmail-"><div id=
=3D"gmail-m_3353676281559097329gmail-m_-3634063191643445799gmail-:mp" class=
=3D"gmail-m_3353676281559097329gmail-m_-3634063191643445799gmail-ii gmail-m=
_3353676281559097329gmail-m_-3634063191643445799gmail-gt" style=3D"directio=
n:ltr;margin:8px 0px 0px;padding:0px"><div id=3D"gmail-m_335367628155909732=
9gmail-m_-3634063191643445799gmail-:mq" class=3D"gmail-m_335367628155909732=
9gmail-m_-3634063191643445799gmail-a3s gmail-m_3353676281559097329gmail-m_-=
3634063191643445799gmail-aXjCH" style=3D"overflow:hidden;font-variant-numer=
ic:normal;font-variant-east-asian:normal;font-stretch:normal;line-height:1.=
5"><div dir=3D"ltr"><div style=3D"font-family:Arial,Helvetica,sans-serif;fo=
nt-size:small">Hi All,</div><div style=3D"font-family:Arial,Helvetica,sans-=
serif;font-size:small"><br class=3D"gmail-m_3353676281559097329gmail-m_-363=
4063191643445799gmail-Apple-interchange-newline">I&#39;m consistently getti=
ng a build failure after upgrading Poky to 2.5 from 2.2 on qtwayland=C2=A0<=
/div><div style=3D"font-family:Arial,Helvetica,sans-serif;font-size:small">=
Yocto recipe from meta-qt5.</div><div style=3D"font-family:Arial,Helvetica,=
sans-serif;font-size:small"><br></div><div>The error looks like :<br><br><p=
re><font color=3D"#000000"><font face=3D"garamond, serif" style=3D"font-fam=
ily:Arial,Helvetica,sans-serif;font-size:small;white-space:pre-wrap">| Runn=
ing configuration tests...
| Checking for Wayland client library... yes
| Checking for Wayland cursor library... yes
| Checking for wayland-scanner... yes
| Checking for Wayland EGL library... yes
| Checking for wayland-server... yes
| Done running configuration tests.
|=20
| Configure summary:
|=20
| Qt Wayland Drivers:
|   EGL .................................... no
|   Raspberry Pi ........................... no
|   XComposite EGL ......................... no
|   XComposite GLX ......................... no
|   DRM EGL ................................ no
|   libhybris EGL .......................... no
| Qt Wayland Client ........................ yes
| Qt Wayland Compositor .................... yes
|=20
| ERROR: Feature &#39;wayland-egl&#39; was enabled, but the pre-condition &=
#39;features.wayland-client &amp;&amp; features.opengl &amp;&amp; features.=
egl &amp;&amp; libs.wayland-egl&#39; failed.
|=20
| ERROR: Feature &#39;wayland-egl&#39; was enabled, but the pre-condition &=
#39;features.wayland-server &amp;&amp; features.opengl &amp;&amp; features.=
egl &amp;&amp; libs.wayland-egl&#39; failed.
|=20
| Check config.log for details.
| WARNING: exit code 1 from a shell command.

</font><font face=3D"arial, helvetica, sans-serif"><font face=3D"Arial, Hel=
vetica, sans-serif"><span style=3D"white-space:pre-wrap">I&#39;ve checked t=
hat only pre-condition &quot;features.egl&quot; is failing.
I&#39;ve my own custom recipe which is providing virtual/egl and is set as =
PREFERRED_PROVIDER also.
What is the missing </span></font><span style=3D"white-space:pre-wrap">depe=
ndency</span><font face=3D"Arial, Helvetica, sans-serif"><span style=3D"whi=
te-space:pre-wrap"> here when virtual/egl is provided?
What exactly is features.egl looking for? ( virtual/egl provides egl.pc )
I&#39;ve not changed anything in meta-qt5 layer. And the version is 5.9.2 Q=
T5. However, is fails with </span></font></font></font>5.12 also.</pre><pre=
 style=3D"font-family:Arial,Helvetica,sans-serif;font-size:small;white-spac=
e:pre-wrap"><font color=3D"#000000"><font face=3D"arial, helvetica, sans-se=
rif"><br></font></font></pre><pre style=3D"font-family:Arial,Helvetica,sans=
-serif;font-size:small;white-space:pre-wrap"><font color=3D"#000000"><font =
face=3D"arial, helvetica, sans-serif">Warm Regards,</font></font></pre><pre=
 style=3D"font-family:Arial,Helvetica,sans-serif;font-size:small;white-spac=
e:pre-wrap"><font color=3D"#000000"><font face=3D"arial, helvetica, sans-se=
rif">Priyanshu Sharma</font></font></pre></div></div><div class=3D"gmail-m_=
3353676281559097329gmail-m_-3634063191643445799gmail-yj6qo" style=3D"font-f=
amily:Arial,Helvetica,sans-serif;font-size:small"></div><div class=3D"gmail=
-m_3353676281559097329gmail-m_-3634063191643445799gmail-adL" style=3D"font-=
family:Arial,Helvetica,sans-serif;font-size:small"></div></div></div><div c=
lass=3D"gmail-m_3353676281559097329gmail-m_-3634063191643445799gmail-hi" st=
yle=3D"font-family:Roboto,RobotoDraft,Helvetica,Arial,sans-serif;font-size:=
medium;border-bottom-left-radius:1px;border-bottom-right-radius:1px;padding=
:0px;width:auto;background:rgb(242,242,242);margin:0px"></div></div></div><=
br class=3D"gmail-m_3353676281559097329gmail-m_-3634063191643445799gmail-Ap=
ple-interchange-newline"></div>
</blockquote></div>
</blockquote></div>

--000000000000646b64058573008e--
