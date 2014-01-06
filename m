Return-Path: <vidal.develone@gmail.com>
Received: from mail-qc0-f178.google.com (mail-qc0-f178.google.com
	[209.85.216.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7350AE00822
	for <yocto@yoctoproject.org>; Mon,  6 Jan 2014 08:25:44 -0800 (PST)
Received: by mail-qc0-f178.google.com with SMTP id i17so17503404qcy.37
	for <yocto@yoctoproject.org>; Mon, 06 Jan 2014 08:25:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=fN8I4hlxF9JK8yzfHMglD3X1Huqi8GKOnXHdTmPlRTQ=;
	b=dQaDUuVU7FTzeYmdk9ieWFNPHjXBqDNpr8tn/q/QmJmhojT22FkjOMaxdXqSSIhvLV
	QCV9N34vlFJGIdj0uX48eF1FRDIfAe9LMzh0ki9f/ArLU3TUatqzodfuVrYvB/kJIBq4
	tH6fmiDbDnMMHEBClAOkNdquPMkuZsoCZ1oah064abHFRMGDxk9ZmW23+cFF/cTber+3
	CvJe/m6Q19+LDajfbhu2a/Z1PeCRmqICDXEhVSFja6Alp/YhGYwTGpCcF2Fk4EdX7bBn
	aFlV1bhcUOyJIuEsKzUCfD2ILGI9byPteqnPzDlGtpZHj6nNIG1Pd5qD2yJ/wTu/EAt0
	PiSA==
MIME-Version: 1.0
X-Received: by 10.49.74.138 with SMTP id t10mr185859311qev.21.1389025543888;
	Mon, 06 Jan 2014 08:25:43 -0800 (PST)
Received: by 10.140.37.49 with HTTP; Mon, 6 Jan 2014 08:25:43 -0800 (PST)
Date: Mon, 6 Jan 2014 09:25:43 -0700
Message-ID: <CANwz6nzBGEOUOKpUvQRNBiLkOkKA4QbnC9N+A6pjgXRisx5MLw@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: zedboard & gnuradio already stripped error
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
X-List-Received-Date: Mon, 06 Jan 2014 16:25:47 -0000
Content-Type: multipart/alternative; boundary=047d7bdc13fe20db4904ef4fb621

--047d7bdc13fe20db4904ef4fb621
Content-Type: text/plain; charset=ISO-8859-1

Hello All,
I just built a dora custom-image for the Zedboard.  Back in July and error
appeared
zedboard & gnuradio *Tue Jul 16 07:47:03 PDT 2013*

Paul helped with the following
Hi Edward,

On Tuesday 16 July 2013 08:47:03 Edward Vidal wrote:
>* ERROR: QA Issue: File '/usr/plugins/designer/libqwt_designer_plugin.so'
*>* from qwt was already stripped, this will prevent future debugging!
*>* ERROR: QA Issue: File '/usr/lib/libqwt.so.6.0.1' from qwt was already
*>* stripped, this will prevent future debugging!
*>* ERROR: QA Issue: File '/usr/lib/libqwtmathml.so.6.0.1' from qwt was already
*>* stripped, this will prevent future debugging!
*
poky.conf now marks this QA issue as an error instead of a warning in order to
pick up on quality issues when running builds. You can either:

a) Fix the recipe so that qwt gets built without stripping its output
binaries, or

b) set your own value for ERROR_QA and WARN_QA so that "already-stripped"
appears in WARN_QA rather than ERROR_QA

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

I used option b) then and in the recent build today.
ERROR_QA = "already-stripped moved to WARN_QA = " in the file
/home/vidal/POKY/kernel_build/poky/meta-yocto/conf/distro/poky.conf

Can some please pass to meta-oe group since I do not have access to that list.

This error does not occur with dylan branch I just switched to dora.

Thanks.

--047d7bdc13fe20db4904ef4fb621
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello All,<br></div>I just built a dora custom-image =
for the Zedboard.=A0 Back in July and error appeared <br><h1>zedboard &amp;=
 gnuradio <i>Tue Jul 16 07:47:03 PDT 2013</i></h1><pre>Paul helped with the=
 following <br>
Hi Edward,

On Tuesday 16 July 2013 08:47:03 Edward Vidal wrote:
&gt;<i> ERROR: QA Issue: File &#39;/usr/plugins/designer/libqwt_designer_pl=
ugin.so&#39;
</i>&gt;<i> from qwt was already stripped, this will prevent future debuggi=
ng!
</i>&gt;<i> ERROR: QA Issue: File &#39;/usr/lib/libqwt.so.6.0.1&#39; from q=
wt was already
</i>&gt;<i> stripped, this will prevent future debugging!
</i>&gt;<i> ERROR: QA Issue: File &#39;/usr/lib/libqwtmathml.so.6.0.1&#39; =
from qwt was already
</i>&gt;<i> stripped, this will prevent future debugging!
</i>
poky.conf now marks this QA issue as an error instead of a warning in order=
 to=20
pick up on quality issues when running builds. You can either:

a) Fix the recipe so that qwt gets built without stripping its output=20
binaries, or

b) set your own value for ERROR_QA and WARN_QA so that &quot;already-stripp=
ed&quot;=20
appears in WARN_QA rather than ERROR_QA

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre
<br></pre><pre>I used option b) then and in the recent build today.<br>ERRO=
R_QA =3D &quot;already-stripped moved to WARN_QA =3D &quot; in the file<br>=
/home/vidal/POKY/kernel_build/poky/meta-yocto/conf/distro/poky.conf<br></pr=
e>
<pre>Can some please pass to meta-oe group since I do not have access to th=
at list.<br></pre><pre>This error does not occur with dylan branch I just s=
witched to dora.<br><br>Thanks.<br></pre></div>

--047d7bdc13fe20db4904ef4fb621--
