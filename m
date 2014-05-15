Return-Path: <lucas.pirolla@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D2F42E00A44; Thu, 15 May 2014 10:33:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_NONE,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (lucas.pirolla[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.45 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 68022 seconds by postgrey-1.32 at yocto-www;
	Thu, 15 May 2014 10:33:31 PDT
Received: from mail-qg0-f45.google.com (unknown [209.85.192.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 815D7E0053B
	for <yocto@yoctoproject.org>; Thu, 15 May 2014 10:33:31 -0700 (PDT)
Received: by mail-qg0-f45.google.com with SMTP id z60so2314480qgd.32
	for <yocto@yoctoproject.org>; Thu, 15 May 2014 10:33:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=r4vTU7ex5NGeZFlLlkuVWD3EWphCTA4WRFMmWJ54jic=;
	b=NkrCQx0jBgFKEndUEviCEBMXmTmF/UFD5DAt2B9VzD4+xn2vnylTmyjzzAP4fOoAkM
	cRUeWjhEZVcIrHKZtmVkR28x6Nsq+VburuAAQcxb2PQ/8EH0uvUeg+SlcIV9lu+/yntz
	K6KRXpC+8cTBokM40hccc7Dg8/cOgzE5SrQNYGc56ASxHpBMTSlq/m9DxK9mAo1f7z+0
	BlKBWANtL4FY5irfiPEfwXHunoMATEHQnQkX5CAUnsT0VMBUReGzqKWrG1rpCJiHzNnY
	0DN/f3FqRr1aqnMdP2NXvT1w+H/2EV6/aT14NZfbBdx1smO1PqoYN3YMQXUlzsleHF76
	sVEw==
X-Received: by 10.140.42.12 with SMTP id b12mr16265580qga.109.1400175210788;
	Thu, 15 May 2014 10:33:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.27.142 with HTTP; Thu, 15 May 2014 10:33:10 -0700 (PDT)
In-Reply-To: <CAJTo0LaEm3_JXSe=XXfsYUyZPgceSRZfP0+_5zDpvuhcZSzdJQ@mail.gmail.com>
References: <CAK4xyAmvGw7dYHhMEcUCHxBSzMiM+9Hk_SedN5huG5hc=BHcNg@mail.gmail.com>
	<5373E26A.6060509@linux.intel.com>
	<CAJTo0LaEm3_JXSe=XXfsYUyZPgceSRZfP0+_5zDpvuhcZSzdJQ@mail.gmail.com>
From: Lucas Pirolla <lucas.pirolla@gmail.com>
Date: Thu, 15 May 2014 14:33:10 -0300
Message-ID: <CAK4xyAkzUtVYQkipdF6W7-ASOafOFx6V4vcOK=TLW9DTUVgb0w@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: meta-web-kiosk: bad fonts in high resolution
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
X-List-Received-Date: Thu, 15 May 2014 17:33:34 -0000
X-Groupsio-MsgNum: 19630
Content-Type: multipart/mixed; boundary=001a11c1172c119bb204f973b23f

--001a11c1172c119bb204f973b23f
Content-Type: multipart/alternative; boundary=001a11c1172c119bad04f973b23d

--001a11c1172c119bad04f973b23d
Content-Type: text/plain; charset=ISO-8859-1

Attached are the outputs for both commands in localhost:0.0

in u-boot, I have:
vid_dev0=ldb,LDB-1080P60,if=RGB24 ldb=spl0



On Thu, May 15, 2014 at 6:57 AM, Burton, Ross <ross.burton@intel.com> wrote:

> On 14 May 2014 22:38, Saul Wold <sgw@linux.intel.com> wrote:
> >> I'm new to Yocto, and I made an Image meta-web-kiosk, and when I run it,
> >> the fonts in browser  are getting messed up, as you can see in these
> >> images:
> >>
> >>
> >>
> https://drive.google.com/folderview?id=0Bw1B-mbeX0tbRnc0OHZSaDVuQlE&usp=sharing
> >>
> >> This happened in FullHD output.  But when I low the resolution to VGA,
> >> fonts are totally ok.
>
> It would be interesting to see the output of xdpyinfo and xrandr, to
> check that X isn't being lied to about the screen.
>
> Ross
>

--001a11c1172c119bad04f973b23d
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Attached are the outputs for both commands in localhost:0.=
0<div><br></div><div>in u-boot, I have:</div><div>vid_dev0=3Dldb,LDB-1080P6=
0,if=3DRGB24 ldb=3Dspl0<br></div><div><br></div></div><div class=3D"gmail_e=
xtra"><br>

<br><div class=3D"gmail_quote">On Thu, May 15, 2014 at 6:57 AM, Burton, Ros=
s <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"=
_blank">ross.burton@intel.com</a>&gt;</span> wrote:<br><blockquote class=3D=
"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding=
-left:1ex">

<div class=3D"">On 14 May 2014 22:38, Saul Wold &lt;<a href=3D"mailto:sgw@l=
inux.intel.com">sgw@linux.intel.com</a>&gt; wrote:<br>
&gt;&gt; I&#39;m new to Yocto, and I made an Image meta-web-kiosk, and when=
 I run it,<br>
&gt;&gt; the fonts in browser =A0are getting messed up, as you can see in t=
hese<br>
&gt;&gt; images:<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; <a href=3D"https://drive.google.com/folderview?id=3D0Bw1B-mbeX0tbR=
nc0OHZSaDVuQlE&amp;usp=3Dsharing" target=3D"_blank">https://drive.google.co=
m/folderview?id=3D0Bw1B-mbeX0tbRnc0OHZSaDVuQlE&amp;usp=3Dsharing</a><br>
&gt;&gt;<br>
&gt;&gt; This happened in FullHD output. =A0But when I low the resolution t=
o VGA,<br>
&gt;&gt; fonts are totally ok.<br>
<br>
</div>It would be interesting to see the output of xdpyinfo and xrandr, to<=
br>
check that X isn&#39;t being lied to about the screen.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Ross<br>
</font></span></blockquote></div><br></div>

--001a11c1172c119bad04f973b23d--

--001a11c1172c119bb204f973b23f
Content-Type: application/octet-stream; name="xdpyinfo.output"
Content-Disposition: attachment; filename="xdpyinfo.output"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_hv8c8sdj0

cm9vdEBjZ3RxbXg2On4jIHhkcHlpbmZvIC1kIGxvY2FsaG9zdDowLjAKbmFtZSBvZiBkaXNwbGF5
OiAgICBsb2NhbGhvc3Q6MC4wCnZlcnNpb24gbnVtYmVyOiAgICAxMS4wCnZlbmRvciBzdHJpbmc6
ICAgIFRoZSBYLk9yZyBGb3VuZGF0aW9uCnZlbmRvciByZWxlYXNlIG51bWJlcjogICAgMTE0MDAw
MDAKWC5PcmcgdmVyc2lvbjogMS4xNC4wCm1heGltdW0gcmVxdWVzdCBzaXplOiAgMTY3NzcyMTIg
Ynl0ZXMKbW90aW9uIGJ1ZmZlciBzaXplOiAgMjU2CmJpdG1hcCB1bml0LCBiaXQgb3JkZXIsIHBh
ZGRpbmc6ICAgIDMyLCBMU0JGaXJzdCwgMzIKaW1hZ2UgYnl0ZSBvcmRlcjogICAgTFNCRmlyc3QK
bnVtYmVyIG9mIHN1cHBvcnRlZCBwaXhtYXAgZm9ybWF0czogICAgNwpzdXBwb3J0ZWQgcGl4bWFw
IGZvcm1hdHM6CiAgICBkZXB0aCAxLCBiaXRzX3Blcl9waXhlbCAxLCBzY2FubGluZV9wYWQgMzIK
ICAgIGRlcHRoIDQsIGJpdHNfcGVyX3BpeGVsIDgsIHNjYW5saW5lX3BhZCAzMgogICAgZGVwdGgg
OCwgYml0c19wZXJfcGl4ZWwgOCwgc2NhbmxpbmVfcGFkIDMyCiAgICBkZXB0aCAxNSwgYml0c19w
ZXJfcGl4ZWwgMTYsIHNjYW5saW5lX3BhZCAzMgogICAgZGVwdGggMTYsIGJpdHNfcGVyX3BpeGVs
IDE2LCBzY2FubGluZV9wYWQgMzIKICAgIGRlcHRoIDI0LCBiaXRzX3Blcl9waXhlbCAzMiwgc2Nh
bmxpbmVfcGFkIDMyCiAgICBkZXB0aCAzMiwgYml0c19wZXJfcGl4ZWwgMzIsIHNjYW5saW5lX3Bh
ZCAzMgprZXljb2RlIHJhbmdlOiAgICBtaW5pbXVtIDgsIG1heGltdW0gMjU1CmZvY3VzOiAgd2lu
ZG93IDB4YTAwMDA1LCByZXZlcnQgdG8gUG9pbnRlclJvb3QKbnVtYmVyIG9mIGV4dGVuc2lvbnM6
ICAgIDI2CiAgICBCSUctUkVRVUVTVFMKICAgIENvbXBvc2l0ZQogICAgREFNQUdFCiAgICBET1VC
TEUtQlVGRkVSCiAgICBEUE1TCiAgICBEUkkyCiAgICBHTFgKICAgIEdlbmVyaWMgRXZlbnQgRXh0
ZW5zaW9uCiAgICBNSVQtU0NSRUVOLVNBVkVSCiAgICBNSVQtU0hNCiAgICBSQU5EUgogICAgUkVO
REVSCiAgICBTR0ktR0xYCiAgICBTSEFQRQogICAgU1lOQwogICAgWC1SZXNvdXJjZQogICAgWEMt
TUlTQwogICAgWEZJWEVTCiAgICBYRnJlZTg2LURHQQogICAgWEZyZWU4Ni1EUkkKICAgIFhGcmVl
ODYtVmlkTW9kZUV4dGVuc2lvbgogICAgWElucHV0RXh0ZW5zaW9uCiAgICBYS0VZQk9BUkQKICAg
IFhURVNUCiAgICBYVmlkZW8KICAgIHZpdmV4dApkZWZhdWx0IHNjcmVlbiBudW1iZXI6ICAgIDAK
bnVtYmVyIG9mIHNjcmVlbnM6ICAgIDEKCnNjcmVlbiAjMDoKICBkaW1lbnNpb25zOiAgICAxOTIw
eDEwODAgcGl4ZWxzICg1MDh4Mjg2IG1pbGxpbWV0ZXJzKQogIHJlc29sdXRpb246ICAgIDk2eDk2
IGRvdHMgcGVyIGluY2gKICBkZXB0aHMgKDcpOiAgICAxNiwgMSwgNCwgOCwgMTUsIDI0LCAzMgog
IHJvb3Qgd2luZG93IGlkOiAgICAweGMyCiAgZGVwdGggb2Ygcm9vdCB3aW5kb3c6ICAgIDE2IHBs
YW5lcwogIG51bWJlciBvZiBjb2xvcm1hcHM6ICAgIG1pbmltdW0gMSwgbWF4aW11bSAxCiAgZGVm
YXVsdCBjb2xvcm1hcDogICAgMHgyMAogIGRlZmF1bHQgbnVtYmVyIG9mIGNvbG9ybWFwIGNlbGxz
OiAgICA2NAogIHByZWFsbG9jYXRlZCBwaXhlbHM6ICAgIGJsYWNrIDAsIHdoaXRlIDY1NTM1CiAg
b3B0aW9uczogICAgYmFja2luZy1zdG9yZSBOTywgc2F2ZS11bmRlcnMgTk8KICBsYXJnZXN0IGN1
cnNvcjogICAgMTkyMHgxMDgwCiAgY3VycmVudCBpbnB1dCBldmVudCBtYXNrOiAgICAweDVhMDAw
MAogICAgU3RydWN0dXJlTm90aWZ5TWFzayAgICAgIFN1YnN0cnVjdHVyZU5vdGlmeU1hc2sgICBT
dWJzdHJ1Y3R1cmVSZWRpcmVjdE1hc2sgCiAgICBQcm9wZXJ0eUNoYW5nZU1hc2sgICAgICAgCiAg
bnVtYmVyIG9mIHZpc3VhbHM6ICAgIDMzCiAgZGVmYXVsdCB2aXN1YWwgaWQ6ICAweDIxCiAgdmlz
dWFsOgogICAgdmlzdWFsIGlkOiAgICAweDIxCiAgICBjbGFzczogICAgVHJ1ZUNvbG9yCiAgICBk
ZXB0aDogICAgMTYgcGxhbmVzCiAgICBhdmFpbGFibGUgY29sb3JtYXAgZW50cmllczogICAgNjQg
cGVyIHN1YmZpZWxkCiAgICByZWQsIGdyZWVuLCBibHVlIG1hc2tzOiAgICAweGY4MDAsIDB4N2Uw
LCAweDFmCiAgICBzaWduaWZpY2FudCBiaXRzIGluIGNvbG9yIHNwZWNpZmljYXRpb246ICAgIDYg
Yml0cwogIHZpc3VhbDoKICAgIHZpc3VhbCBpZDogICAgMHhhMgogICAgY2xhc3M6ICAgIFRydWVD
b2xvcgogICAgZGVwdGg6ICAgIDE2IHBsYW5lcwogICAgYXZhaWxhYmxlIGNvbG9ybWFwIGVudHJp
ZXM6ICAgIDY0IHBlciBzdWJmaWVsZAogICAgcmVkLCBncmVlbiwgYmx1ZSBtYXNrczogICAgMHhm
ODAwLCAweDdlMCwgMHgxZgogICAgc2lnbmlmaWNhbnQgYml0cyBpbiBjb2xvciBzcGVjaWZpY2F0
aW9uOiAgICA2IGJpdHMKICB2aXN1YWw6CiAgICB2aXN1YWwgaWQ6ICAgIDB4YTMKICAgIGNsYXNz
OiAgICBUcnVlQ29sb3IKICAgIGRlcHRoOiAgICAxNiBwbGFuZXMKICAgIGF2YWlsYWJsZSBjb2xv
cm1hcCBlbnRyaWVzOiAgICA2NCBwZXIgc3ViZmllbGQKICAgIHJlZCwgZ3JlZW4sIGJsdWUgbWFz
a3M6ICAgIDB4ZjgwMCwgMHg3ZTAsIDB4MWYKICAgIHNpZ25pZmljYW50IGJpdHMgaW4gY29sb3Ig
c3BlY2lmaWNhdGlvbjogICAgNiBiaXRzCiAgdmlzdWFsOgogICAgdmlzdWFsIGlkOiAgICAweGE0
CiAgICBjbGFzczogICAgVHJ1ZUNvbG9yCiAgICBkZXB0aDogICAgMTYgcGxhbmVzCiAgICBhdmFp
bGFibGUgY29sb3JtYXAgZW50cmllczogICAgNjQgcGVyIHN1YmZpZWxkCiAgICByZWQsIGdyZWVu
LCBibHVlIG1hc2tzOiAgICAweGY4MDAsIDB4N2UwLCAweDFmCiAgICBzaWduaWZpY2FudCBiaXRz
IGluIGNvbG9yIHNwZWNpZmljYXRpb246ICAgIDYgYml0cwogIHZpc3VhbDoKICAgIHZpc3VhbCBp
ZDogICAgMHhhNQogICAgY2xhc3M6ICAgIFRydWVDb2xvcgogICAgZGVwdGg6ICAgIDE2IHBsYW5l
cwogICAgYXZhaWxhYmxlIGNvbG9ybWFwIGVudHJpZXM6ICAgIDY0IHBlciBzdWJmaWVsZAogICAg
cmVkLCBncmVlbiwgYmx1ZSBtYXNrczogICAgMHhmODAwLCAweDdlMCwgMHgxZgogICAgc2lnbmlm
aWNhbnQgYml0cyBpbiBjb2xvciBzcGVjaWZpY2F0aW9uOiAgICA2IGJpdHMKICB2aXN1YWw6CiAg
ICB2aXN1YWwgaWQ6ICAgIDB4YTYKICAgIGNsYXNzOiAgICBUcnVlQ29sb3IKICAgIGRlcHRoOiAg
ICAxNiBwbGFuZXMKICAgIGF2YWlsYWJsZSBjb2xvcm1hcCBlbnRyaWVzOiAgICA2NCBwZXIgc3Vi
ZmllbGQKICAgIHJlZCwgZ3JlZW4sIGJsdWUgbWFza3M6ICAgIDB4ZjgwMCwgMHg3ZTAsIDB4MWYK
ICAgIHNpZ25pZmljYW50IGJpdHMgaW4gY29sb3Igc3BlY2lmaWNhdGlvbjogICAgNiBiaXRzCiAg
dmlzdWFsOgogICAgdmlzdWFsIGlkOiAgICAweGE3CiAgICBjbGFzczogICAgVHJ1ZUNvbG9yCiAg
ICBkZXB0aDogICAgMTYgcGxhbmVzCiAgICBhdmFpbGFibGUgY29sb3JtYXAgZW50cmllczogICAg
NjQgcGVyIHN1YmZpZWxkCiAgICByZWQsIGdyZWVuLCBibHVlIG1hc2tzOiAgICAweGY4MDAsIDB4
N2UwLCAweDFmCiAgICBzaWduaWZpY2FudCBiaXRzIGluIGNvbG9yIHNwZWNpZmljYXRpb246ICAg
IDYgYml0cwogIHZpc3VhbDoKICAgIHZpc3VhbCBpZDogICAgMHhhOAogICAgY2xhc3M6ICAgIFRy
dWVDb2xvcgogICAgZGVwdGg6ICAgIDE2IHBsYW5lcwogICAgYXZhaWxhYmxlIGNvbG9ybWFwIGVu
dHJpZXM6ICAgIDY0IHBlciBzdWJmaWVsZAogICAgcmVkLCBncmVlbiwgYmx1ZSBtYXNrczogICAg
MHhmODAwLCAweDdlMCwgMHgxZgogICAgc2lnbmlmaWNhbnQgYml0cyBpbiBjb2xvciBzcGVjaWZp
Y2F0aW9uOiAgICA2IGJpdHMKICB2aXN1YWw6CiAgICB2aXN1YWwgaWQ6ICAgIDB4YTkKICAgIGNs
YXNzOiAgICBUcnVlQ29sb3IKICAgIGRlcHRoOiAgICAxNiBwbGFuZXMKICAgIGF2YWlsYWJsZSBj
b2xvcm1hcCBlbnRyaWVzOiAgICA2NCBwZXIgc3ViZmllbGQKICAgIHJlZCwgZ3JlZW4sIGJsdWUg
bWFza3M6ICAgIDB4ZjgwMCwgMHg3ZTAsIDB4MWYKICAgIHNpZ25pZmljYW50IGJpdHMgaW4gY29s
b3Igc3BlY2lmaWNhdGlvbjogICAgNiBiaXRzCiAgdmlzdWFsOgogICAgdmlzdWFsIGlkOiAgICAw
eGFhCiAgICBjbGFzczogICAgVHJ1ZUNvbG9yCiAgICBkZXB0aDogICAgMTYgcGxhbmVzCiAgICBh
dmFpbGFibGUgY29sb3JtYXAgZW50cmllczogICAgNjQgcGVyIHN1YmZpZWxkCiAgICByZWQsIGdy
ZWVuLCBibHVlIG1hc2tzOiAgICAweGY4MDAsIDB4N2UwLCAweDFmCiAgICBzaWduaWZpY2FudCBi
aXRzIGluIGNvbG9yIHNwZWNpZmljYXRpb246ICAgIDYgYml0cwogIHZpc3VhbDoKICAgIHZpc3Vh
bCBpZDogICAgMHhhYgogICAgY2xhc3M6ICAgIFRydWVDb2xvcgogICAgZGVwdGg6ICAgIDE2IHBs
YW5lcwogICAgYXZhaWxhYmxlIGNvbG9ybWFwIGVudHJpZXM6ICAgIDY0IHBlciBzdWJmaWVsZAog
ICAgcmVkLCBncmVlbiwgYmx1ZSBtYXNrczogICAgMHhmODAwLCAweDdlMCwgMHgxZgogICAgc2ln
bmlmaWNhbnQgYml0cyBpbiBjb2xvciBzcGVjaWZpY2F0aW9uOiAgICA2IGJpdHMKICB2aXN1YWw6
CiAgICB2aXN1YWwgaWQ6ICAgIDB4YWMKICAgIGNsYXNzOiAgICBUcnVlQ29sb3IKICAgIGRlcHRo
OiAgICAxNiBwbGFuZXMKICAgIGF2YWlsYWJsZSBjb2xvcm1hcCBlbnRyaWVzOiAgICA2NCBwZXIg
c3ViZmllbGQKICAgIHJlZCwgZ3JlZW4sIGJsdWUgbWFza3M6ICAgIDB4ZjgwMCwgMHg3ZTAsIDB4
MWYKICAgIHNpZ25pZmljYW50IGJpdHMgaW4gY29sb3Igc3BlY2lmaWNhdGlvbjogICAgNiBiaXRz
CiAgdmlzdWFsOgogICAgdmlzdWFsIGlkOiAgICAweGFkCiAgICBjbGFzczogICAgVHJ1ZUNvbG9y
CiAgICBkZXB0aDogICAgMTYgcGxhbmVzCiAgICBhdmFpbGFibGUgY29sb3JtYXAgZW50cmllczog
ICAgNjQgcGVyIHN1YmZpZWxkCiAgICByZWQsIGdyZWVuLCBibHVlIG1hc2tzOiAgICAweGY4MDAs
IDB4N2UwLCAweDFmCiAgICBzaWduaWZpY2FudCBiaXRzIGluIGNvbG9yIHNwZWNpZmljYXRpb246
ICAgIDYgYml0cwogIHZpc3VhbDoKICAgIHZpc3VhbCBpZDogICAgMHhhZQogICAgY2xhc3M6ICAg
IFRydWVDb2xvcgogICAgZGVwdGg6ICAgIDE2IHBsYW5lcwogICAgYXZhaWxhYmxlIGNvbG9ybWFw
IGVudHJpZXM6ICAgIDY0IHBlciBzdWJmaWVsZAogICAgcmVkLCBncmVlbiwgYmx1ZSBtYXNrczog
ICAgMHhmODAwLCAweDdlMCwgMHgxZgogICAgc2lnbmlmaWNhbnQgYml0cyBpbiBjb2xvciBzcGVj
aWZpY2F0aW9uOiAgICA2IGJpdHMKICB2aXN1YWw6CiAgICB2aXN1YWwgaWQ6ICAgIDB4YWYKICAg
IGNsYXNzOiAgICBUcnVlQ29sb3IKICAgIGRlcHRoOiAgICAxNiBwbGFuZXMKICAgIGF2YWlsYWJs
ZSBjb2xvcm1hcCBlbnRyaWVzOiAgICA2NCBwZXIgc3ViZmllbGQKICAgIHJlZCwgZ3JlZW4sIGJs
dWUgbWFza3M6ICAgIDB4ZjgwMCwgMHg3ZTAsIDB4MWYKICAgIHNpZ25pZmljYW50IGJpdHMgaW4g
Y29sb3Igc3BlY2lmaWNhdGlvbjogICAgNiBiaXRzCiAgdmlzdWFsOgogICAgdmlzdWFsIGlkOiAg
ICAweGIwCiAgICBjbGFzczogICAgVHJ1ZUNvbG9yCiAgICBkZXB0aDogICAgMTYgcGxhbmVzCiAg
ICBhdmFpbGFibGUgY29sb3JtYXAgZW50cmllczogICAgNjQgcGVyIHN1YmZpZWxkCiAgICByZWQs
IGdyZWVuLCBibHVlIG1hc2tzOiAgICAweGY4MDAsIDB4N2UwLCAweDFmCiAgICBzaWduaWZpY2Fu
dCBiaXRzIGluIGNvbG9yIHNwZWNpZmljYXRpb246ICAgIDYgYml0cwogIHZpc3VhbDoKICAgIHZp
c3VhbCBpZDogICAgMHhiMQogICAgY2xhc3M6ICAgIERpcmVjdENvbG9yCiAgICBkZXB0aDogICAg
MTYgcGxhbmVzCiAgICBhdmFpbGFibGUgY29sb3JtYXAgZW50cmllczogICAgNjQgcGVyIHN1YmZp
ZWxkCiAgICByZWQsIGdyZWVuLCBibHVlIG1hc2tzOiAgICAweGY4MDAsIDB4N2UwLCAweDFmCiAg
ICBzaWduaWZpY2FudCBiaXRzIGluIGNvbG9yIHNwZWNpZmljYXRpb246ICAgIDYgYml0cwogIHZp
c3VhbDoKICAgIHZpc3VhbCBpZDogICAgMHhiMgogICAgY2xhc3M6ICAgIERpcmVjdENvbG9yCiAg
ICBkZXB0aDogICAgMTYgcGxhbmVzCiAgICBhdmFpbGFibGUgY29sb3JtYXAgZW50cmllczogICAg
NjQgcGVyIHN1YmZpZWxkCiAgICByZWQsIGdyZWVuLCBibHVlIG1hc2tzOiAgICAweGY4MDAsIDB4
N2UwLCAweDFmCiAgICBzaWduaWZpY2FudCBiaXRzIGluIGNvbG9yIHNwZWNpZmljYXRpb246ICAg
IDYgYml0cwogIHZpc3VhbDoKICAgIHZpc3VhbCBpZDogICAgMHhiMwogICAgY2xhc3M6ICAgIERp
cmVjdENvbG9yCiAgICBkZXB0aDogICAgMTYgcGxhbmVzCiAgICBhdmFpbGFibGUgY29sb3JtYXAg
ZW50cmllczogICAgNjQgcGVyIHN1YmZpZWxkCiAgICByZWQsIGdyZWVuLCBibHVlIG1hc2tzOiAg
ICAweGY4MDAsIDB4N2UwLCAweDFmCiAgICBzaWduaWZpY2FudCBiaXRzIGluIGNvbG9yIHNwZWNp
ZmljYXRpb246ICAgIDYgYml0cwogIHZpc3VhbDoKICAgIHZpc3VhbCBpZDogICAgMHhiNAogICAg
Y2xhc3M6ICAgIERpcmVjdENvbG9yCiAgICBkZXB0aDogICAgMTYgcGxhbmVzCiAgICBhdmFpbGFi
bGUgY29sb3JtYXAgZW50cmllczogICAgNjQgcGVyIHN1YmZpZWxkCiAgICByZWQsIGdyZWVuLCBi
bHVlIG1hc2tzOiAgICAweGY4MDAsIDB4N2UwLCAweDFmCiAgICBzaWduaWZpY2FudCBiaXRzIGlu
IGNvbG9yIHNwZWNpZmljYXRpb246ICAgIDYgYml0cwogIHZpc3VhbDoKICAgIHZpc3VhbCBpZDog
ICAgMHhiNQogICAgY2xhc3M6ICAgIERpcmVjdENvbG9yCiAgICBkZXB0aDogICAgMTYgcGxhbmVz
CiAgICBhdmFpbGFibGUgY29sb3JtYXAgZW50cmllczogICAgNjQgcGVyIHN1YmZpZWxkCiAgICBy
ZWQsIGdyZWVuLCBibHVlIG1hc2tzOiAgICAweGY4MDAsIDB4N2UwLCAweDFmCiAgICBzaWduaWZp
Y2FudCBiaXRzIGluIGNvbG9yIHNwZWNpZmljYXRpb246ICAgIDYgYml0cwogIHZpc3VhbDoKICAg
IHZpc3VhbCBpZDogICAgMHhiNgogICAgY2xhc3M6ICAgIERpcmVjdENvbG9yCiAgICBkZXB0aDog
ICAgMTYgcGxhbmVzCiAgICBhdmFpbGFibGUgY29sb3JtYXAgZW50cmllczogICAgNjQgcGVyIHN1
YmZpZWxkCiAgICByZWQsIGdyZWVuLCBibHVlIG1hc2tzOiAgICAweGY4MDAsIDB4N2UwLCAweDFm
CiAgICBzaWduaWZpY2FudCBiaXRzIGluIGNvbG9yIHNwZWNpZmljYXRpb246ICAgIDYgYml0cwog
IHZpc3VhbDoKICAgIHZpc3VhbCBpZDogICAgMHhiNwogICAgY2xhc3M6ICAgIERpcmVjdENvbG9y
CiAgICBkZXB0aDogICAgMTYgcGxhbmVzCiAgICBhdmFpbGFibGUgY29sb3JtYXAgZW50cmllczog
ICAgNjQgcGVyIHN1YmZpZWxkCiAgICByZWQsIGdyZWVuLCBibHVlIG1hc2tzOiAgICAweGY4MDAs
IDB4N2UwLCAweDFmCiAgICBzaWduaWZpY2FudCBiaXRzIGluIGNvbG9yIHNwZWNpZmljYXRpb246
ICAgIDYgYml0cwogIHZpc3VhbDoKICAgIHZpc3VhbCBpZDogICAgMHhiOAogICAgY2xhc3M6ICAg
IERpcmVjdENvbG9yCiAgICBkZXB0aDogICAgMTYgcGxhbmVzCiAgICBhdmFpbGFibGUgY29sb3Jt
YXAgZW50cmllczogICAgNjQgcGVyIHN1YmZpZWxkCiAgICByZWQsIGdyZWVuLCBibHVlIG1hc2tz
OiAgICAweGY4MDAsIDB4N2UwLCAweDFmCiAgICBzaWduaWZpY2FudCBiaXRzIGluIGNvbG9yIHNw
ZWNpZmljYXRpb246ICAgIDYgYml0cwogIHZpc3VhbDoKICAgIHZpc3VhbCBpZDogICAgMHhiOQog
ICAgY2xhc3M6ICAgIERpcmVjdENvbG9yCiAgICBkZXB0aDogICAgMTYgcGxhbmVzCiAgICBhdmFp
bGFibGUgY29sb3JtYXAgZW50cmllczogICAgNjQgcGVyIHN1YmZpZWxkCiAgICByZWQsIGdyZWVu
LCBibHVlIG1hc2tzOiAgICAweGY4MDAsIDB4N2UwLCAweDFmCiAgICBzaWduaWZpY2FudCBiaXRz
IGluIGNvbG9yIHNwZWNpZmljYXRpb246ICAgIDYgYml0cwogIHZpc3VhbDoKICAgIHZpc3VhbCBp
ZDogICAgMHhiYQogICAgY2xhc3M6ICAgIERpcmVjdENvbG9yCiAgICBkZXB0aDogICAgMTYgcGxh
bmVzCiAgICBhdmFpbGFibGUgY29sb3JtYXAgZW50cmllczogICAgNjQgcGVyIHN1YmZpZWxkCiAg
ICByZWQsIGdyZWVuLCBibHVlIG1hc2tzOiAgICAweGY4MDAsIDB4N2UwLCAweDFmCiAgICBzaWdu
aWZpY2FudCBiaXRzIGluIGNvbG9yIHNwZWNpZmljYXRpb246ICAgIDYgYml0cwogIHZpc3VhbDoK
ICAgIHZpc3VhbCBpZDogICAgMHhiYgogICAgY2xhc3M6ICAgIERpcmVjdENvbG9yCiAgICBkZXB0
aDogICAgMTYgcGxhbmVzCiAgICBhdmFpbGFibGUgY29sb3JtYXAgZW50cmllczogICAgNjQgcGVy
IHN1YmZpZWxkCiAgICByZWQsIGdyZWVuLCBibHVlIG1hc2tzOiAgICAweGY4MDAsIDB4N2UwLCAw
eDFmCiAgICBzaWduaWZpY2FudCBiaXRzIGluIGNvbG9yIHNwZWNpZmljYXRpb246ICAgIDYgYml0
cwogIHZpc3VhbDoKICAgIHZpc3VhbCBpZDogICAgMHhiYwogICAgY2xhc3M6ICAgIERpcmVjdENv
bG9yCiAgICBkZXB0aDogICAgMTYgcGxhbmVzCiAgICBhdmFpbGFibGUgY29sb3JtYXAgZW50cmll
czogICAgNjQgcGVyIHN1YmZpZWxkCiAgICByZWQsIGdyZWVuLCBibHVlIG1hc2tzOiAgICAweGY4
MDAsIDB4N2UwLCAweDFmCiAgICBzaWduaWZpY2FudCBiaXRzIGluIGNvbG9yIHNwZWNpZmljYXRp
b246ICAgIDYgYml0cwogIHZpc3VhbDoKICAgIHZpc3VhbCBpZDogICAgMHhiZAogICAgY2xhc3M6
ICAgIERpcmVjdENvbG9yCiAgICBkZXB0aDogICAgMTYgcGxhbmVzCiAgICBhdmFpbGFibGUgY29s
b3JtYXAgZW50cmllczogICAgNjQgcGVyIHN1YmZpZWxkCiAgICByZWQsIGdyZWVuLCBibHVlIG1h
c2tzOiAgICAweGY4MDAsIDB4N2UwLCAweDFmCiAgICBzaWduaWZpY2FudCBiaXRzIGluIGNvbG9y
IHNwZWNpZmljYXRpb246ICAgIDYgYml0cwogIHZpc3VhbDoKICAgIHZpc3VhbCBpZDogICAgMHhi
ZQogICAgY2xhc3M6ICAgIERpcmVjdENvbG9yCiAgICBkZXB0aDogICAgMTYgcGxhbmVzCiAgICBh
dmFpbGFibGUgY29sb3JtYXAgZW50cmllczogICAgNjQgcGVyIHN1YmZpZWxkCiAgICByZWQsIGdy
ZWVuLCBibHVlIG1hc2tzOiAgICAweGY4MDAsIDB4N2UwLCAweDFmCiAgICBzaWduaWZpY2FudCBi
aXRzIGluIGNvbG9yIHNwZWNpZmljYXRpb246ICAgIDYgYml0cwogIHZpc3VhbDoKICAgIHZpc3Vh
bCBpZDogICAgMHhiZgogICAgY2xhc3M6ICAgIERpcmVjdENvbG9yCiAgICBkZXB0aDogICAgMTYg
cGxhbmVzCiAgICBhdmFpbGFibGUgY29sb3JtYXAgZW50cmllczogICAgNjQgcGVyIHN1YmZpZWxk
CiAgICByZWQsIGdyZWVuLCBibHVlIG1hc2tzOiAgICAweGY4MDAsIDB4N2UwLCAweDFmCiAgICBz
aWduaWZpY2FudCBiaXRzIGluIGNvbG9yIHNwZWNpZmljYXRpb246ICAgIDYgYml0cwogIHZpc3Vh
bDoKICAgIHZpc3VhbCBpZDogICAgMHhjMAogICAgY2xhc3M6ICAgIERpcmVjdENvbG9yCiAgICBk
ZXB0aDogICAgMTYgcGxhbmVzCiAgICBhdmFpbGFibGUgY29sb3JtYXAgZW50cmllczogICAgNjQg
cGVyIHN1YmZpZWxkCiAgICByZWQsIGdyZWVuLCBibHVlIG1hc2tzOiAgICAweGY4MDAsIDB4N2Uw
LCAweDFmCiAgICBzaWduaWZpY2FudCBiaXRzIGluIGNvbG9yIHNwZWNpZmljYXRpb246ICAgIDYg
Yml0cwogIHZpc3VhbDoKICAgIHZpc3VhbCBpZDogICAgMHg0MQogICAgY2xhc3M6ICAgIFRydWVD
b2xvcgogICAgZGVwdGg6ICAgIDMyIHBsYW5lcwogICAgYXZhaWxhYmxlIGNvbG9ybWFwIGVudHJp
ZXM6ICAgIDI1NiBwZXIgc3ViZmllbGQKICAgIHJlZCwgZ3JlZW4sIGJsdWUgbWFza3M6ICAgIDB4
ZmYwMDAwLCAweGZmMDAsIDB4ZmYKICAgIHNpZ25pZmljYW50IGJpdHMgaW4gY29sb3Igc3BlY2lm
aWNhdGlvbjogICAgOCBiaXRzCg==

--001a11c1172c119bb204f973b23f
Content-Type: application/octet-stream; name="xrandr.output"
Content-Disposition: attachment; filename="xrandr.output"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_hv8c8sdo1

cm9vdEBjZ3RxbXg2On4jIHhyYW5kciAtZCBsb2NhbGhvc3Q6MC4wCnhyYW5kcjogRmFpbGVkIHRv
IGdldCBzaXplIG9mIGdhbW1hIGZvciBvdXRwdXQgZGVmYXVsdApTY3JlZW4gMDogbWluaW11bSAx
OTIwIHggMTA4MCwgY3VycmVudCAxOTIwIHggMTA4MCwgbWF4aW11bSAxOTIwIHggMTA4MApkZWZh
dWx0IGNvbm5lY3RlZCAxOTIweDEwODArMCswIDBtbSB4IDBtbQogICAxOTIweDEwODAgICAgICA1
Ni4wKiAK

--001a11c1172c119bb204f973b23f--
