Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01F9FE01404
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2012 16:00:32 -0700 (PDT)
Received: by iagt4 with SMTP id t4so197874iag.35
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2012 16:00:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:sender:date:x-google-sender-auth:message-id:subject
	:from:to:content-type:x-gm-message-state;
	bh=cT3wKhMIfBCB8DXfQFIeNyEObF5ZUD24SxJ/f+0yxjI=;
	b=WjKYdWDjeC1Sf7wkTpLYh4PMeeCKjbE5vWAIarIpzMtMm6W/sO2actTBNvC3oEtI2+
	DGeWWNUAZ60S/91DY0vzEisfg+CPG/G4vJxXV9rrogSnACxgrG0KppuLMJdBLir+fHMR
	X2zaGe0WCTmebP86udrXdAmvQKtS131PaEPmFuFv4yrUljFfNgSoIHR/bm4886KoGGZn
	5cTiYP0qM2HE603ZvTmm5YpipnV4jGUkIrj2P6ijP1td2/qDdsCfcO0X1UV9TSFt9Nb5
	lUuU9491b+ynoWv8sU6ABwvIC24IrFxvKuU72LZ5Ra76kcANegavpgpByu0U9G9Wzszd
	wA+w==
MIME-Version: 1.0
Received: by 10.50.222.162 with SMTP id qn2mr3978575igc.46.1345676430122; Wed,
	22 Aug 2012 16:00:30 -0700 (PDT)
Sender: rstreif@linuxfoundation.org
Received: by 10.64.142.134 with HTTP; Wed, 22 Aug 2012 16:00:30 -0700 (PDT)
Date: Wed, 22 Aug 2012 16:00:30 -0700
X-Google-Sender-Auth: msbLtZlaXpCg_MdQFCov4Qf8CNQ
Message-ID: <CA+gsK-pwJ4dWQ6PyR-Lg2y3L7N19K5Ndzo-1c1n3wqbryy5vbQ@mail.gmail.com>
From: Rudolf Streif <rudolf.streif@linux.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQls3sJ9eIK9ibpRx6VdkRst7AvbSwqD28Iagfw+QKsV29aCsEl5C7LQkhW+Ln839lseeXm7
Subject: [Eclipse ADT] Eclipse plugin download site is not a valid Eclipse site
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 22 Aug 2012 23:00:33 -0000
Content-Type: multipart/alternative; boundary=14dae9340fbf999d5204c7e2b531

--14dae9340fbf999d5204c7e2b531
Content-Type: text/plain; charset=ISO-8859-1

The download site
http://downloads.yoctoproject.org/releases/eclipse-plugin/1.2.1/indigo/ for
the Eclipse plugin is not a correctly setup Eclipse download site. The site
root does not have the correct layout for Eclipse to be able to recognize
it:

<site root>/
    content.jar
    artifacts.jar
    features/
        feature archives
    plugins/
        plug-in archives
    binary/
        binary artifact archives

However, the file org.yocto.sdk-rc1-201206291755-archive.zip looks as if it
contains the correct site layout. The
file org.yocto.sdk-rc1-201206291755.zip does contain the features and
plugins only however time stamps in the file names and file sizes differ
from the ones contained in org.yocto.sdk-rc1-201206291755-archive.zip.

Could anybody please shed some light on this?

Thanks,
Rudi

--14dae9340fbf999d5204c7e2b531
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div>The download site=A0<a href=3D"http://downloads.yoctoproject.org/relea=
ses/eclipse-plugin/1.2.1/indigo/">http://downloads.yoctoproject.org/release=
s/eclipse-plugin/1.2.1/indigo/</a>=A0for the Eclipse plugin is not a correc=
tly setup Eclipse download site. The site root does not have the correct la=
yout for Eclipse to be able to recognize it:</div>
<div><br></div><div><font face=3D"arial, helvetica, sans-serif"><tt>&lt;sit=
e root&gt;/</tt>=A0<br><tt>=A0=A0=A0 content.jar</tt>=A0<br><tt>=A0=A0=A0 a=
rtifacts.jar</tt>=A0<br><tt>=A0=A0=A0 features/</tt>=A0<br><tt>=A0=A0=A0=A0=
=A0=A0=A0 feature archives</tt><br><tt>=A0=A0=A0 plugins/</tt>=A0<br>
<tt>=A0=A0=A0=A0=A0=A0=A0 plug-in archives=A0=A0=A0</tt><br><tt>=A0=A0=A0 b=
inary/</tt>=A0<br><tt>=A0=A0=A0=A0=A0=A0=A0 binary artifact archives</tt></=
font></div><div><font face=3D"arial, helvetica, sans-serif"><tt><br></tt></=
font></div><div>However, the file org.yocto.sdk-rc1-201206291755-archive.zi=
p looks as if it contains the correct site layout. The file=A0org.yocto.sdk=
-rc1-201206291755.zip does contain the features and plugins only however ti=
me stamps in the file names and file sizes differ from the ones contained i=
n=A0org.yocto.sdk-rc1-201206291755-archive.zip.</div>
<div><br></div><div>Could anybody please shed some light on this?</div><div=
><br></div><div>Thanks,</div><div>Rudi</div><table style=3D"font-family:&#3=
9;Times New Roman&#39;"><tbody><tr><td><br><br></td></tr></tbody></table>


--14dae9340fbf999d5204c7e2b531--
