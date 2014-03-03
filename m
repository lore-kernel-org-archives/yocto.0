Return-Path: <bianchirickkutta@gmail.com>
Received: from mail-vc0-f181.google.com (mail-vc0-f181.google.com
	[209.85.220.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2099AE009EA
	for <yocto@yoctoproject.org>; Mon,  3 Mar 2014 08:47:17 -0800 (PST)
Received: by mail-vc0-f181.google.com with SMTP id lg15so3757707vcb.26
	for <yocto@yoctoproject.org>; Mon, 03 Mar 2014 08:47:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=3L2ce/FhTls4APcLk8mv0JtpWM7FgQUBKD/1ECPz2BI=;
	b=rkCmpZD3EdUJ10ZjiWN1ZfO6D5PSyYrCialWmkghYTy1GmKNI2peqQwu6zck2Y49x0
	uGeWNkwOc647pv1mYYDK2sy0lGQcFpKLdVL0dEbbApQCFlCqjES+/9N/iBA6KLHRcExV
	hImDamrUCGEnkOs+uLzSqeyeD3Nja5Oc7i5EP1U6BDQmnd2iUdKUKBqEELEJ5Qdp2JLL
	IGS4cu0tS1ZHh3SNTBNdSyd346mzOvutsy0dUnoGFlwegcJJu/NnHRuSyzr/6Cy4MoFg
	2m/XhOl4u7KUCvWucn+ZFB0PwkHPjH68TlWtRIAA7crlaDdJMH7EY2e4NzQR9BBoil9I
	kVbw==
MIME-Version: 1.0
X-Received: by 10.58.200.229 with SMTP id jv5mr17720631vec.15.1393865236797;
	Mon, 03 Mar 2014 08:47:16 -0800 (PST)
Received: by 10.220.96.66 with HTTP; Mon, 3 Mar 2014 08:47:16 -0800 (PST)
In-Reply-To: <1461290.cFV4RBsgra@peggleto-mobl5.ger.corp.intel.com>
References: <CAA7h+EqtOE2spfgtXi2CiogUFsytGxyb4EgqSAoanwTximA-+w@mail.gmail.com>
	<2231928.eQF8dO1LsD@peggleto-mobl5.ger.corp.intel.com>
	<CAA7h+Eob=M1uvSVHM+vr6s-rNKHuHpRdMG06pttGs19Ak9Oe9g@mail.gmail.com>
	<1461290.cFV4RBsgra@peggleto-mobl5.ger.corp.intel.com>
Date: Mon, 3 Mar 2014 09:47:16 -0700
Message-ID: <CAA7h+EoPfLcMW3SF9SkUKai5KPe9RJpEJu8+Nz+akUYX9TNZfw@mail.gmail.com>
From: Rick Bianchi <bianchirickkutta@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: WARNING: Failed to fetch URL http://downloads.sourceforge.net/openjade/openjade-0.6.14.tar.gz, attempting MIRRORS if available
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
X-List-Received-Date: Mon, 03 Mar 2014 16:47:18 -0000
X-Groupsio-MsgNum: 18312
Content-Type: multipart/mixed; boundary=047d7bd6ad3c4df27004f3b68a3d

--047d7bd6ad3c4df27004f3b68a3d
Content-Type: multipart/alternative; boundary=047d7bd6ad3c4df26b04f3b68a3b

--047d7bd6ad3c4df26b04f3b68a3b
Content-Type: text/plain; charset=ISO-8859-1

No, I have not made any changes to the yoctousbip/build/conf/local.conf.

The only change I made was to the file:
yoctousbip/poky/meta/recipes-devtools/docbook-utils/
docbook-utils-native_0.6.14.bb

It was throwing an error and I understood that it needed to be patched.


On Mon, Mar 3, 2014 at 9:43 AM, Paul Eggleton <paul.eggleton@linux.intel.com
> wrote:

> On Monday 03 March 2014 09:40:16 Rick Bianchi wrote:
> > On Mon, Mar 3, 2014 at 9:27 AM, Paul Eggleton
> > <paul.eggleton@linux.intel.com> wrote:
> > > Before doing this, Rick could you run the following and post the
> output:
> > >
> > > bitbake -e docbook-utils-native | grep ^SRC_URI=
> >
> > Here is the ouput:
> >
> > SRC_URI="
> >
> ftp://sources.redhat.com/pub/docbook-tools/new-trials/SOURCES/docbook-utils->
> 0.6.14.tar.gzfile://re.patch"
>
> OK, nothing odd there.
>
> Have you changed any settings in your local.conf?
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>

--047d7bd6ad3c4df26b04f3b68a3b
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>No, I have not made any changes to the yoctousbip/bui=
ld/conf/local.conf.<br></div><div><br></div><div>The only change I made was=
 to the file: yoctousbip/poky/meta/recipes-devtools/docbook-utils/<a href=
=3D"http://docbook-utils-native_0.6.14.bb">docbook-utils-native_0.6.14.bb</=
a></div>
<div><br></div><div>It was throwing an error and I understood that it neede=
d to be patched.=A0</div></div><div class=3D"gmail_extra"><br><br><div clas=
s=3D"gmail_quote">On Mon, Mar 3, 2014 at 9:43 AM, Paul Eggleton <span dir=
=3D"ltr">&lt;<a href=3D"mailto:paul.eggleton@linux.intel.com" target=3D"_bl=
ank">paul.eggleton@linux.intel.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"">On Monday 03 March 2014 09:4=
0:16 Rick Bianchi wrote:<br>
&gt; On Mon, Mar 3, 2014 at 9:27 AM, Paul Eggleton<br>
&gt; &lt;<a href=3D"mailto:paul.eggleton@linux.intel.com">paul.eggleton@lin=
ux.intel.com</a>&gt; wrote:<br>
</div><div class=3D"">&gt; &gt; Before doing this, Rick could you run the f=
ollowing and post the output:<br>
&gt; &gt;<br>
&gt; &gt; bitbake -e docbook-utils-native | grep ^SRC_URI=3D<br>
&gt;<br>
</div><div class=3D"">&gt; Here is the ouput:<br>
&gt;<br>
&gt; SRC_URI=3D&quot;<br>
&gt; <a href=3D"ftp://sources.redhat.com/pub/docbook-tools/new-trials/SOURC=
ES/docbook-utils-" target=3D"_blank">ftp://sources.redhat.com/pub/docbook-t=
ools/new-trials/SOURCES/docbook-utils-</a>&gt; 0.6.14.tar.gzfile://re.patch=
&quot;<br>

<br>
</div>OK, nothing odd there.<br>
<br>
Have you changed any settings in your local.conf?<br>
<br>
Cheers,<br>
<div class=3D"HOEnZb"><div class=3D"h5">Paul<br>
<br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</div></div></blockquote></div><br></div>

--047d7bd6ad3c4df26b04f3b68a3b--

--047d7bd6ad3c4df27004f3b68a3d
Content-Type: application/octet-stream; 
	name="docbook-utils-native_0.6.14.bb"
Content-Disposition: attachment; filename="docbook-utils-native_0.6.14.bb"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_hsbzcxh50

U1VNTUFSWSA9ICJUb29scyBmb3Igd29ya2luZyB3aXRoIERTU1NMIHN0eWxlc2hlZXRzIGZvciBT
R01MIGFuZCBYTUwgZG9jdW1lbnRzIgpERVNDUklQVElPTiA9ICJPcGVuSmFkZSBpcyBhIHN1aXRl
IG9mIHRvb2xzIGZvciB2YWxpZGF0aW5nLCBcCnByb2Nlc3NpbmcsIGFuZCBhcHBseWluZyBEU1NT
TCAoRG9jdW1lbnQgU3R5bGUgU2VtYW50aWNzIGFuZCBcClNwZWNpZmljYXRpb24gTGFuZ3VhZ2Up
IHN0eWxlc2hlZXRzIHRvIFNHTUwgYW5kIFhNTCBkb2N1bWVudHMuIgpIT01FUEFHRSA9ICJodHRw
Oi8vb3BlbmphZGUuc291cmNlZm9yZ2UubmV0IgpTRUNUSU9OID0gImJhc2UiCkxJQ0VOU0UgPSAi
QlNEIgpMSUNfRklMRVNfQ0hLU1VNID0gImZpbGU6Ly9DT1BZSU5HO21kNT02NDFmZjFlNDUxMWYw
YTg3MDQ0YWQ0MmY4N2NiMTA0NSIKClBSID0gInI1IgoKREVQRU5EUyA9ICJvcGVuc3AtbmF0aXZl
IHNnbWwtY29tbW9uLW5hdGl2ZSIKUkRFUEVORFNfJHtQTn0gPSAic2dtbC1jb21tb24tbmF0aXZl
IgoKU1JDX1VSSSA9ICIke1NPVVJDRUZPUkdFX01JUlJPUn0vb3BlbmphZGUvb3BlbmphZGUtJHtQ
Vn0udGFyLmd6IFwKICAgICAgICAgICBmaWxlOi8vbWFrZWZpbGUucGF0Y2ggXAogICAgICAgICAg
IGZpbGU6Ly9tc2dnZW4ucGwucGF0Y2ggXAogICAgICAgICAgIGZpbGU6Ly9yZWF1dG9jb25mLnBh
dGNoIFwKCSAgIGZpbGU6Ly91c2VyLWRlY2xhcmVkLWRlZmF1bHQtY29uc3RydWN0b3IucGF0Y2gi
CgpTUkNfVVJJW21kNXN1bV0gPSAiN2RmNjkyZTMxODYxMDljYzAwZGI2ODI1Yjc3NzIwMWUiClNS
Q19VUklbc2hhMjU2c3VtXSA9ICIxZDJkNzk5NmNjOTRmOWI4N2QwYzUxY2YwZTAyODA3MGFjMTc3
YzQxMjNlY2JmZDdhYzFjYjhkMGI3ZDMyMmQxIgoKaW5oZXJpdCBhdXRvdG9vbHMgbmF0aXZlCgoj
IG5lZXJhaiBsaW5rIHN0YXRpY2FsbHkgdG8gbG9jYWwgbGlicyBpbnN0ZWFkIG9mIHNoYXJlZCBi
ZWNhdXNlIHRoZXJlIGlzCiMgYW5kIGlzc3VlIHdpdGggbGlib2dyb3ZlLnNvLCB3aGljaCBkb2Vz
bnQgZ2V0IGxpbmtlZCB0byBvcGVuamFkZSBiaW5hcnkKIyBhbHRob3VnaCB0aGUgbGlib3NwZ3Jv
dmUuc28gdXNlcyBpdCAoYm9vbSBhbmQgaXQgZmFpbHMpLgoKCgpFWFRSQV9PRUNPTkYgPSAiLS1l
bmFibGUtc3BpbmNsdWRlZGlyPSR7U1RBR0lOR19JTkNESVJ9L09wZW5TUCBcCiAgICAgICAgICAg
ICAgICAtLWVuYWJsZS1zcGxpYmRpcj0ke1NUQUdJTkdfTElCRElSfSBcCiAgICAgICAgICAgICAg
ICAtLWVuYWJsZS1zdGF0aWMgLS1kaXNhYmxlLXNoYXJlZCIKCgojIFdlIG5lZWQgdG8gc2V0IGRh
dGFkaXIgZXhwbGljaXRseSwgYnV0IGFkZGluZyBpdCB0byBFWFRSQV9PRUNPTkYKIyByZXN1bHRz
IGluIGl0IGJlaW5nIHNwZWNpZmllZCB0d2ljZSB3aGVuIGNvbmZpZ3VyZSBpcyBydW4uCkNPTkZJ
R1VSRU9QVFMgOj0gIiR7QGQuZ2V0VmFyKCdDT05GSUdVUkVPUFRTJywgVHJ1ZSkucmVwbGFjZSgn
LS1kYXRhZGlyPSR7ZGF0YWRpcn0nLCAnLS1kYXRhZGlyPSR7U1RBR0lOR19EQVRBRElSfS9zZ21s
L29wZW5qYWRlLSR7UFZ9Jyl9IgoKIyBDT05GSUdVUkVPUFRTIGhhcyBoYXJkIGNvZGVkIHBhdGhz
IHNvIHdlIG5lZWQgdG8gaWdub3JlIGl0J3MgdmFyZGVwcwojIHRoZXJlIGFyZSBvdGhlciBiaXRz
IGluIHRoZXJlIHRvbyBidXQgdGhleSBhcmUgcGlja2VkIHVwIGJ5IG90aGVyIHZhcmlhYmxlCiMg
ZGVwZW5kZW5jaWVzIHNvIGl0IGFsbCB3b3JrcyBvdXQKb2VfcnVuY29uZlt2YXJkZXBzZXhjbHVk
ZV0gKz0gIkNPTkZJR1VSRU9QVFMiCgpDRkxBR1MgPSsgIi1JJHtTfS9pbmNsdWRlIgoKU1NUQVRF
UE9TVElOU1RGVU5DUyArPSAib3BlbmphZGVfc3N0YXRlX3Bvc3RpbnN0IgpTWVNST09UX1BSRVBS
T0NFU1NfRlVOQ1MgKz0gIm9wZW5qYWRlX3N5c3Jvb3RfcHJlcHJvY2VzcyIKCiMgY29uZmlndXJl
LmluIG5lZWRzIHRvIGJlIHJlbG9hY3RlZCB0byB0cmlnZ2VyIHJlYXV0b2NvbmYKZG9fY29uZmln
dXJlX3ByZXBlbmQgKCkgewoJY3AgJHtTfS9jb25maWcvY29uZmlndXJlLmluICR7U30vCn0KCiMg
V2UgbmVlZCB0byBkbyB0aGlzIGVsc2UgdGhlIHNvdXJjZSBpbnRlcmRlcGVuZGVuY2llcyBhcmVu
J3QgZ2VuZXJhdGVkIGFuZAojIGJ1aWxkIGZhaWx1cmVzIGNhbiByZXN1bHQgKGUuZy4gemVybyBz
aXplIHN0eWxlL01ha2VmaWxlLmRlcCBmaWxlKQpkb19jb21waWxlX3ByZXBlbmQgKCkgewoJb2Vf
cnVubWFrZSBkZXBlbmQKfQoKZG9faW5zdGFsbCgpIHsKCSMgUmVmZXIgdG8gaHR0cDovL3d3dy5s
aW51eGZyb21zY3JhdGNoLm9yZy9ibGZzL3ZpZXcvc3RhYmxlL3BzdC9vcGVuamFkZS5odG1sCgkj
IGZvciBkZXRhaWxzLgoJaW5zdGFsbCAtZCAke0R9JHtiaW5kaXJ9CQojIG9wZW5qYWRlIGlzIG5v
IGxvbmdlciBidWlsdCB3aXRoIHNoYXJlZCBsaWIgb3B0aW9uIGR1ZSB0byBhIGJ1ZwojIChzZWUg
dGhlIEVYVFJBX09FQ09ORiBvcHRpb25zIGZvciBkZXRhaWxzKS4KI2luc3RhbGwgLW0gMDc1NSAk
e1N9L2phZGUvLmxpYnMvb3BlbmphZGUgJHtEfSR7YmluZGlyfS9vcGVuamFkZQppbnN0YWxsIC1t
IDA3NTUgJHtTfS9qYWRlL29wZW5qYWRlICR7RH0ke2JpbmRpcn0vb3BlbmphZGUKCWxuIC1zZiBv
cGVuamFkZSAke0R9JHtiaW5kaXJ9L2phZGUKCiMgRVhUUkFfT0VDT05GIChzZWUgYWJvdmUpIG5v
dyBkaXNhYmxlcyBzaGFyZWQgbGliCiAgICAgICAjb2VfbGliaW5zdGFsbCAtYSAtc28gLUMgc3R5
bGUgbGlib3N0eWxlICR7RH0ke2xpYmRpcn0KICAgICAgICNvZV9saWJpbnN0YWxsIC1hIC1zbyAt
QyBzcGdyb3ZlIGxpYm9zcGdyb3ZlICR7RH0ke2xpYmRpcn0KICAgICAgICNvZV9saWJpbnN0YWxs
IC1hIC1zbyAtQyBncm92ZSBsaWJvZ3JvdmUgJHtEfSR7bGliZGlyfQoKCglpbnN0YWxsIC1kICR7
RH0ke2RhdGFkaXJ9L3NnbWwvb3BlbmphZGUtJHtQVn0KCWluc3RhbGwgLW0gNjQ0IGRzc3NsL2Nh
dGFsb2cgJHtEfSR7ZGF0YWRpcn0vc2dtbC9vcGVuamFkZS0ke1BWfQoJaW5zdGFsbCAtbSA2NDQg
ZHNzc2wvKi5kdGQgJHtEfSR7ZGF0YWRpcn0vc2dtbC9vcGVuamFkZS0ke1BWfQoJaW5zdGFsbCAt
bSA2NDQgZHNzc2wvKi5kc2wgJHtEfSR7ZGF0YWRpcn0vc2dtbC9vcGVuamFkZS0ke1BWfQoJaW5z
dGFsbCAtbSA2NDQgZHNzc2wvKi5zZ20gJHtEfSR7ZGF0YWRpcn0vc2dtbC9vcGVuamFkZS0ke1BW
fQoKCWluc3RhbGwgLWQgJHtkYXRhZGlyfS9zZ21sL29wZW5qYWRlLSR7UFZ9CglpbnN0YWxsIC1t
IDY0NCBkc3NzbC9jYXRhbG9nICR7ZGF0YWRpcn0vc2dtbC9vcGVuamFkZS0ke1BWfS9jYXRhbG9n
CgoJaW5zdGFsbCAtZCAke0R9JHtzeXNjb25mZGlyfS9zZ21sCgllY2hvICJDQVRBTE9HICR7ZGF0
YWRpcn0vc2dtbC9vcGVuamFkZS0ke1BWfS9jYXRhbG9nIiA+IFwKCQkke0R9JHtzeXNjb25mZGly
fS9zZ21sL29wZW5qYWRlLSR7UFZ9LmNhdAp9CgpvcGVuamFkZV9zc3RhdGVfcG9zdGluc3QoKSB7
CglpZiBbICIke0JCX0NVUlJFTlRUQVNLfSIgPSAicG9wdWxhdGVfc3lzcm9vdCIgLW8gIiR7QkJf
Q1VSUkVOVFRBU0t9IiA9ICJwb3B1bGF0ZV9zeXNyb290X3NldHNjZW5lIiBdCgl0aGVuCgkJIyBF
bnN1cmUgdGhhdCB0aGUgY2F0YWxvZyBmaWxlIHNnbWwtZG9jYm9vay5jYXQgaXMgcHJvcGVybHkK
CQkjIHVwZGF0ZWQgd2hlbiB0aGUgcGFja2FnZSBpcyBpbnN0YWxsZWQgZnJvbSBzc3RhdGUgY2Fj
aGUuCgkJJHtTWVNST09UX0RFU1RESVJ9JHtiaW5kaXJfY3Jvc3NzY3JpcHRzfS9pbnN0YWxsLWNh
dGFsb2ctb3BlbmphZGUgXAoJCQktLWFkZCAke3N5c2NvbmZkaXJ9L3NnbWwvc2dtbC1kb2Nib29r
LmJhayBcCgkJCSR7c3lzY29uZmRpcn0vc2dtbC9vcGVuamFkZS0ke1BWfS5jYXQKCQkke1NZU1JP
T1RfREVTVERJUn0ke2JpbmRpcl9jcm9zc3NjcmlwdHN9L2luc3RhbGwtY2F0YWxvZy1vcGVuamFk
ZSBcCgkJCS0tYWRkICR7c3lzY29uZmRpcn0vc2dtbC9zZ21sLWRvY2Jvb2suY2F0IFwKCQkJJHtz
eXNjb25mZGlyfS9zZ21sL29wZW5qYWRlLSR7UFZ9LmNhdAoJZmkKfQoKb3BlbmphZGVfc3lzcm9v
dF9wcmVwcm9jZXNzICgpIHsKICAgIGluc3RhbGwgLWQgJHtTWVNST09UX0RFU1RESVJ9JHtiaW5k
aXJfY3Jvc3NzY3JpcHRzfS8KICAgIGluc3RhbGwgLW0gNzU1ICR7U1RBR0lOR19CSU5ESVJfTkFU
SVZFfS9pbnN0YWxsLWNhdGFsb2cgJHtTWVNST09UX0RFU1RESVJ9JHtiaW5kaXJfY3Jvc3NzY3Jp
cHRzfS9pbnN0YWxsLWNhdGFsb2ctb3BlbmphZGUKfQo=

--047d7bd6ad3c4df27004f3b68a3d--
