Return-Path: <nicolas.dechesne@linaro.org>
Received: from mail-ob0-f173.google.com (mail-ob0-f173.google.com
	[209.85.214.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72411E0079E
	for <yocto@yoctoproject.org>; Thu, 28 Nov 2013 00:02:25 -0800 (PST)
Received: by mail-ob0-f173.google.com with SMTP id gq1so8488971obb.18
	for <yocto@yoctoproject.org>; Thu, 28 Nov 2013 00:02:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=E7Xt50X0pnnZ6nLmBoDsPtv286H5doxFcnDl34gLSQk=;
	b=FO0GhMiLMnrlsDeCK6eK8xABySC96sqPJw3OOL2M1znTQyuFOt3QwMjYNpXD9P8Qt9
	Ziz2CIz/bJPbNz2GROeUMFjIbQiArTqeDtji/GKvNSn3iqDnacEkMdNq+TmgETSXL4hd
	mHhHV+Hws1Djf1JdDGoRPcwuFx65V+eefggMYFe3V1GXALZJKoc3nd1KFcl4yntw1oJh
	UDnH4lcIL2cb1jfqerNQSF49uXjFaauSsCXSnSVVRIoruN+lDJTNqK7XBnrBMFTthk+3
	wQMmOn25IlvOVmZc271NKKBS89dDOp0SZZJQpTZ/BqfiZQpeLj0ZNaU/CPW7cUyY+fxe
	nP3g==
X-Gm-Message-State: ALoCoQkWSSTmVXPRpWD9DBuHiLZWy0gNGCxZahcjRS2oaK3cPSJHbYTQu9Fnoc2g99/eJrS6hkOZ
X-Received: by 10.60.117.225 with SMTP id kh1mr37223348oeb.15.1385625743701;
	Thu, 28 Nov 2013 00:02:23 -0800 (PST)
MIME-Version: 1.0
Received: by 10.76.0.50 with HTTP; Thu, 28 Nov 2013 00:02:02 -0800 (PST)
In-Reply-To: <b9a38e41-8736-4efe-8d5d-895e34fae5a3@VA3EHSMHS020.ehs.local>
References: <b9a38e41-8736-4efe-8d5d-895e34fae5a3@VA3EHSMHS020.ehs.local>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Thu, 28 Nov 2013 09:02:02 +0100
Message-ID: <CAP71Wjyirm30Hpe-jZ99P=FKm3uWCgQTqg=RPqnOYFeGYAPREw@mail.gmail.com>
To: Nathan Rossi <nathan.rossi@xilinx.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"meta-xilinx Mailing List \(meta-xilinx@yoctoproject.org\)"
	<meta-xilinx@yoctoproject.org>
Subject: Re: Patch failure with bbappends
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
X-List-Received-Date: Thu, 28 Nov 2013 08:02:27 -0000
Content-Type: multipart/alternative; boundary=047d7b3a9a7c3ecd3004ec38223a

--047d7b3a9a7c3ecd3004ec38223a
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Nov 28, 2013 at 8:10 AM, Nathan Rossi <nathan.rossi@xilinx.com>wrote:

> Reverting this commit on the top of master results in a functional build.
> I've done some 'bitbake -e' scanning with and without the above commit, and
> I cannot see any differences between the variables that are changed in the
> meta-xilinx .bbappends files. So it does not appear to be a problem in
> non-inclusion of the bbappend files, and the ordering of the inclusion
> appears to be correct as well.
>
> Before I dive any deeper into the bitbake change itself I was hoping
> someone might have seen this issue previously or has some insight.
>

just a wild guess... but could it be because gcc-cross and
gcc-cross-initial both start with 'gcc-cross', hence the regexp in this new
commit is catching them twice? i am referring to this:

-        if f in self.appendlist:
-            return self.appendlist[f]
-        return []
+        for bbappend in self.appendlist:
+            if bbappend in f or ('%' in bbappend and
bbappend.startswith(f[:bbappend.index('%')])):
+                self.appliedappendlist.append(bbappend)
+                for filename in self.appendlist[bbappend]:
+                    filelist.append(filename)

--047d7b3a9a7c3ecd3004ec38223a
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Thu, Nov 28, 2013 at 8:10 AM, Nathan Rossi <span dir=3D"ltr">&lt;<a href=
=3D"mailto:nathan.rossi@xilinx.com" target=3D"_blank">nathan.rossi@xilinx.c=
om</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div id=3D":zr" style=3D"overflow:hidden">Reverting this c=
ommit on the top of master results in a functional build. I&#39;ve done som=
e &#39;bitbake -e&#39; scanning with and without the above commit, and I ca=
nnot see any differences between the variables that are changed in the meta=
-xilinx .bbappends files. So it does not appear to be a problem in non-incl=
usion of the bbappend files, and the ordering of the inclusion appears to b=
e correct as well.<br>


<br>
Before I dive any deeper into the bitbake change itself I was hoping someon=
e might have seen this issue previously or has some insight.<br></div></blo=
ckquote></div><br>just a wild guess... but could it be because gcc-cross an=
d gcc-cross-initial both start with &#39;gcc-cross&#39;, hence the regexp i=
n this new commit is catching them twice? i am referring to this:</div>

<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra"><div class=
=3D"gmail_extra">- =A0 =A0 =A0 =A0if f in self.appendlist:</div><div class=
=3D"gmail_extra">- =A0 =A0 =A0 =A0 =A0 =A0return self.appendlist[f]</div><d=
iv class=3D"gmail_extra">- =A0 =A0 =A0 =A0return []</div>

<div class=3D"gmail_extra">+ =A0 =A0 =A0 =A0for bbappend in self.appendlist=
:</div><div class=3D"gmail_extra">+ =A0 =A0 =A0 =A0 =A0 =A0if bbappend in f=
 or (&#39;%&#39; in bbappend and bbappend.startswith(f[:bbappend.index(&#39=
;%&#39;)])):</div><div class=3D"gmail_extra">

+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0self.appliedappendlist.append(bbappend)</d=
iv><div class=3D"gmail_extra">+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0for filename=
 in self.appendlist[bbappend]:</div><div class=3D"gmail_extra">+ =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0filelist.append(filename)</div>

<div><br></div></div></div>

--047d7b3a9a7c3ecd3004ec38223a--
