Return-Path: <elizabeth.flanagan@intel.com>
Received: from azsmga102.ch.intel.com (mga12.intel.com [143.182.124.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E041BE006B0
	for <yocto@yoctoproject.org>; Tue, 29 Nov 2011 09:33:36 -0800 (PST)
Received: from mail-iy0-f180.google.com ([209.85.210.180])
	by mga14.intel.com with ESMTP/TLS/RC4-SHA; 29 Nov 2011 09:33:34 -0800
Received: by iagz35 with SMTP id z35so16711769iag.25
	for <yocto@yoctoproject.org>; Tue, 29 Nov 2011 09:33:34 -0800 (PST)
MIME-Version: 1.0
Received: by 10.50.216.137 with SMTP id oq9mr57333562igc.40.1322588013930;
	Tue, 29 Nov 2011 09:33:33 -0800 (PST)
Received: by 10.50.40.194 with HTTP; Tue, 29 Nov 2011 09:33:33 -0800 (PST)
In-Reply-To: <4ECFAE1F.7030207@linux.intel.com>
References: <4ECFAE1F.7030207@linux.intel.com>
Date: Tue, 29 Nov 2011 09:33:33 -0800
Message-ID: <CAPhnLPCA3G+u8n0JY-HT8XPubPy-P73fA6ee9QqDKFUr8UQprA@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Darren Hart <dvhart@linux.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: libgdbus do_unpack failing in master
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
X-List-Received-Date: Tue, 29 Nov 2011 17:33:37 -0000
Content-Type: multipart/alternative; boundary=14dae934048bc12a0804b2e30419

--14dae934048bc12a0804b2e30419
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Nov 25, 2011 at 7:02 AM, Darren Hart <dvhart@linux.intel.com> wrote:

> libgdbus is hitting an unpack failure. Fetch completes, but do_unpack
> fails complaining that we appear to have checked out an empty repository.
>
> I get the same when I clone manually from the SRC_URI (a kernel.org repo
> that appears to not have been fully restored):
>
> $ git clone git://git.kernel.org/pub/scm/bluetooth/libgdbus.git
> Cloning into libgdbus...
> warning: You appear to have cloned an empty repository.
>
> I was able to find a functional fetch in an older download to get going
> again.
>
> Can we somehow mark this as needing to fetch from the mirror for the
> time being?
>
> Beth, are we performing a do_unpack on every fetch without using mirrors
> on the autobuilder? If not, could we add a single world build which
> doesn't share the downloads dir with the other builds? As dependent as
> we are on the upstream URLs, it would be good to catch this sort of
> thing earlier.
>
>
We do a world fetch into current_sources. That is the autobuilders DL_DIR.
Once a day that gets rsynced to the main source mirror. I don't do a
do_unpack on every fetch, but yeah, open a bug and I'll see what I can do
to validate the download.

-b


> --
> Darren Hart
> Intel Open Source Technology Center
> Yocto Project - Linux Kernel
>



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

--14dae934048bc12a0804b2e30419
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><br><div class=3D"gmail_quote">On Fri, Nov 25, 2011 at 7:02 AM, Darren =
Hart <span dir=3D"ltr">&lt;<a href=3D"mailto:dvhart@linux.intel.com">dvhart=
@linux.intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote"=
 style=3D"margin: 0pt 0pt 0pt 0.8ex; border-left: 1px solid rgb(204, 204, 2=
04); padding-left: 1ex;">
libgdbus is hitting an unpack failure. Fetch completes, but do_unpack<br>
fails complaining that we appear to have checked out an empty repository.<b=
r>
<br>
I get the same when I clone manually from the SRC_URI (a <a href=3D"http://=
kernel.org" target=3D"_blank">kernel.org</a> repo<br>
that appears to not have been fully restored):<br>
<br>
$ git clone git://<a href=3D"http://git.kernel.org/pub/scm/bluetooth/libgdb=
us.git" target=3D"_blank">git.kernel.org/pub/scm/bluetooth/libgdbus.git</a>=
<br>
Cloning into libgdbus...<br>
warning: You appear to have cloned an empty repository.<br>
<br>
I was able to find a functional fetch in an older download to get going<br>
again.<br>
<br>
Can we somehow mark this as needing to fetch from the mirror for the<br>
time being?<br>
<br>
Beth, are we performing a do_unpack on every fetch without using mirrors<br=
>
on the autobuilder? If not, could we add a single world build which<br>
doesn&#39;t share the downloads dir with the other builds? As dependent as<=
br>
we are on the upstream URLs, it would be good to catch this sort of<br>
thing earlier.<br>
<font color=3D"#888888"><br></font></blockquote><div><br>We do a world fetc=
h into current_sources. That is the autobuilders DL_DIR. Once a day that ge=
ts rsynced to the main source mirror. I don&#39;t do a do_unpack on every f=
etch, but yeah, open a bug and I&#39;ll see what I can do to validate the d=
ownload.<br>
<br>-b<br>=A0</div><blockquote class=3D"gmail_quote" style=3D"margin: 0pt 0=
pt 0pt 0.8ex; border-left: 1px solid rgb(204, 204, 204); padding-left: 1ex;=
"><font color=3D"#888888">
--<br>
Darren Hart<br>
Intel Open Source Technology Center<br>
Yocto Project - Linux Kernel<br>
</font></blockquote></div><br><br clear=3D"all"><br>-- <br>Elizabeth Flanag=
an<br>Yocto Project<br>Build and Release<br>

--14dae934048bc12a0804b2e30419--
