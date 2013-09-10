Return-Path: <jc@vtkloud.com>
Received: from mail-qc0-f180.google.com (mail-qc0-f180.google.com
	[209.85.216.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 859B8E0156E
	for <yocto@yoctoproject.org>; Tue, 10 Sep 2013 00:11:21 -0700 (PDT)
Received: by mail-qc0-f180.google.com with SMTP id p19so3752075qcv.25
	for <yocto@yoctoproject.org>; Tue, 10 Sep 2013 00:11:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:in-reply-to
	:references:from:to:cc:subject:content-type;
	bh=sUgGN90vLQ5LiQNTzTupmILa0YGpu3NME2Jt2CeD+hw=;
	b=fqGpbtEaKNzJE8KXJ23Lefj5JefmFcDa5aglVCL8ao1/FWQbuGjkF9UFnIUMxKo0cM
	FsBI4yK3m9tJYLStgByDaNr+MCQv6E46Pk5D7TiFPvQx1kNOOVdG/1Oo3sqepQ/wevLh
	Pllp5zyLGHuOvSI/DpxTPdWeRskeLb6DXUGgWaTxFmPr98qoCoHaMkFflM/WycVgb5OD
	+Kild6X0FshgwxABMSNNrlAejCvh+1bItnlSzXmILjQVVRGlWr7h5HomyATW+OtUk8/E
	WDz2+Sf4+UFTOLKU0ByCbuYjqiCjRIfHoePV76T045mtlcHMl/GcQNGOXz2ps287ZpvY
	5eKg==
X-Gm-Message-State: ALoCoQkViR0tUbugyhK6OpotcVTAg/bLfaM66arICYGBPoEVOkh73yQ5B1ly+MuJNgGtbQd8j5SS
X-Received: by 10.49.71.78 with SMTP id s14mr9195335qeu.82.1378797080398;
	Tue, 10 Sep 2013 00:11:20 -0700 (PDT)
Received: from [127.0.0.1] (ec2-54-235-159-142.compute-1.amazonaws.com.
	[54.235.159.142])
	by mx.google.com with ESMTPSA id fy7sm31897391qeb.1.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 10 Sep 2013 00:11:19 -0700 (PDT)
MIME-Version: 1.0
X-Mailer: Nodemailer (0.5.0; +http://www.nodemailer.com/)
Date: Tue, 10 Sep 2013 00:11:19 -0700 (PDT)
Message-Id: <1378797078844.a48f150b@Nodemailer>
In-Reply-To: <522E28ED.5000807@gmail.com>
References: <522E28ED.5000807@gmail.com>
X-Orchestra-Oid: 682600EB-CE96-4033-94AF-C76E991D00EA
X-Orchestra-Sig: ad2342e0068dd5e412307bbe0342630b10c52a73
X-Orchestra-Thrid: TDF50CD80-D5BE-4DE9-9446-44DAF41E57D4_1445731364809247728
X-Orchestra-Thrid-Sig: f9c516245aac4bee6c045c5308ad4ccfd3e8ba21
X-Orchestra-Account: 3bd0ec2367a8fcbcb5d29073f5e6935021f48a33
From: "JC" <jc@vtkloud.com>
To: "Arun M Kumar" <arunkr.linux@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: error in : $ runqemu qemux86
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
X-List-Received-Date: Tue, 10 Sep 2013 07:11:21 -0000
Content-Type: multipart/alternative;
	boundary="----Nodemailer-0.5.0-?=_1-1378797079728"

------Nodemailer-0.5.0-?=_1-1378797079728
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On lun., sept. 9, 2013 at 10:01 PM, Arun M Kumar <arunkr.linux@gmail.=
com=3D=22mailto:arunkr.linux@gmail.com=22>> wrote:

    I have built my first image with the Yocto Project build environment, =
I=20

have the image ready.


when I do.


$ runqemu qemux86


I get the following error.


---------------------------------------------------------------------------=
-----

There was an error running bitbake to determine TMPDIR

Here is the output from 'bitbake -e':

ERROR: Unable to parse conf/bitbake.conf: conf/bitbake.conf:18: =
unparsed=20

line: 'xport exec=5Fprefix =3D =22/usr=22'

=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F



What could be the possible causes to this.=C2=A0
    =E2=80=8B

=20=20=20=20
      How did you generate your image=3F
      Did you run the oe-.. Script first =3F

=20=20=20=20=20=20
=20=20=20=20=20=20=20=20


      Jay

=20=20=20=20=20=20

=20=20=20=20

    =E2=80=8B

=20=20=20=20
=20=20=20=20=20=20
=20=20=20=20=20=20=20=20


=20=20=20=20

=20=20=20=20
=20=20=20=20=20=20

=20=20=20=20

I had to add the scripts directory in Poky to my PATH variable, does=20

this gives any hints to my problem =3F

=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F

yocto mailing list

yocto@yoctoproject.org

https://lists.yoctoproject.org/listinfo/yocto

------Nodemailer-0.5.0-?=_1-1378797079728
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <body>
    <br/>
    <br/>
    <br/>
    <div id=3D=22orc-email-signature=22 style=3D=22display: block; =22>
      <div class=3D=22mailbox=5Fsignature=22>
        <br/>
      </div>
    </div>
    <span id=3D=22orc-full-body-initial-text=22 style=3D=22display: inline;=
 =22>On lun., sept. 9, 2013 at 10:01 PM, Arun M Kumar &lt;<a><href =
target=3D=22=5Fblank=22>arunkr.linux@gmail.com</href>=3D=22mailto:arunkr.=
linux@gmail.com=22&gt;</a>&gt; wrote:<br/></span>
    <blockquote class=3D=22gmail=5Fquote=22>I have built my first image =
with the Yocto Project build environment, I=20
<br/>have the image ready.
<br/><br/>when I do.
<br/><br/>$ runqemu qemux86
<br/><br/>I get the following error.
<br/><br/>-----------------------------------------------------------------=
---------------
<br/>There was an error running bitbake to determine TMPDIR
<br/>Here is the output from 'bitbake -e':
<br/>ERROR: Unable to parse conf/bitbake.conf: conf/bitbake.conf:18: =
unparsed=20
<br/>line: 'xport exec=5Fprefix =3D =22/usr=22'
<br/>=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F
<br/><br/><br/>What could be the possible causes to this.=
=C2=A0</blockquote>
    <div id=3D=22mb-inline-edit=22>=E2=80=8B</div>
    <div id=3D=22mb-inline-edit=22>
      <span style=3D=22-webkit-composition-fill-color: rgba(175, 192, 227, =
0.230469); -webkit-composition-frame-color: rgba(77, 128, 180, 0.230469); =
=22>How did you generate your image=3F</span>
      <div style=3D=22-webkit-composition-fill-color: rgba(175, 192, 227, 0=
.230469); -webkit-composition-frame-color: rgba(77, 128, 180, 0.230469); =
=22>Did you run the oe-.. Script first =3F</div>
      <div style=3D=22-webkit-composition-fill-color: rgba(175, 192, 227, 0=
.230469); -webkit-composition-frame-color: rgba(77, 128, 180, 0.230469); =
=22>
        <br/>
      </div>
      <div style=3D=22-webkit-composition-fill-color: rgba(175, 192, 227, 0=
.230469); -webkit-composition-frame-color: rgba(77, 128, 180, 0.230469); =
=22>Jay</div>
      <div style=3D=22-webkit-composition-fill-color: rgba(175, 192, 227, 0=
.230469); -webkit-composition-frame-color: rgba(77, 128, 180, 0.230469); =
=22/>
    </div>
    <div id=3D=22mb-inline-edit=22>=E2=80=8B</div>
    <div id=3D=22mb-inline-edit=22>
      <div style=3D=22-webkit-composition-fill-color: rgba(175, 192, 227, 0=
.230469); -webkit-composition-frame-color: rgba(77, 128, 180, 0.230469); =
=22>
        <br/>
      </div>
    </div>
    <blockquote class=3D=22gmail=5Fquote=22>
      <br/>
    </blockquote>
    <blockquote class=3D=22gmail=5Fquote=22><br/><br/>I had to add the =
scripts directory in Poky to my PATH variable, does=20
<br/>this gives any hints to my problem =3F
<br/>=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F
<br/>yocto mailing list
<br/>yocto@yoctoproject.org
<br/>https://lists.yoctoproject.org/listinfo/yocto
<br/></blockquote>
  </body>
</html>

------Nodemailer-0.5.0-?=_1-1378797079728--
