Return-Path: <matyunin.n@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1010CE007DC; Mon,  4 Aug 2014 03:10:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (matyunin.n[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f170.google.com (mail-ig0-f170.google.com
	[209.85.213.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2F21E007D3
	for <yocto@yoctoproject.org>; Mon,  4 Aug 2014 03:10:44 -0700 (PDT)
Received: by mail-ig0-f170.google.com with SMTP id h3so6968020igd.5
	for <yocto@yoctoproject.org>; Mon, 04 Aug 2014 03:10:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=OQx0i6DQ5R2bAoNd3Yb7vuRTGRmOFqkPfwWV5fy85NM=;
	b=vjtK2QHCZ7HMzakTD8x9dBdDzPMB4cUMn4FVczQ5gOyclRLwIXdD6Ly6musuKbLHOi
	d0hiO9zJMyOzxoFRPshOVu/9RPbIzcGqL/YuIWQqs8yyK6vWDX+JfRSpCy5uXlEQ8GYP
	PWx9NIN3AIcqwPU0X/Pe5sKcVVJBYi2aStLMU71tAJ7KtF1Ymc6Q+KCLy4OjABBmYx+/
	oiyrn8ymxa2gDEbfv54ZbolyKNvve5NKM6kEGWEmodZwZR+G8eSDPIo+PDKA01cZ6S+o
	4xI24jF0JUq8Lp3WNIKT8gVc9FgjFD5yD5PKVIelWBcGO4WfCcHh3AbutrgePzWRzLXg
	q1dg==
X-Received: by 10.42.80.7 with SMTP id t7mr31144171ick.9.1407147043711; Mon,
	04 Aug 2014 03:10:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.12.76 with HTTP; Mon, 4 Aug 2014 03:10:23 -0700 (PDT)
From: =?UTF-8?B?0J3QuNC60L7Qu9Cw0Lkg0JzQsNGC0Y7QvdC40L0=?=
	<matyunin.n@gmail.com>
Date: Mon, 4 Aug 2014 14:10:23 +0400
Message-ID: <CA+wwts2QjHjJxKm3C8pHtgsdcvAYXujvw-HfD=Yg3UL1+poaDQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Build gstreamer and Qt5 to use QCamera
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
X-List-Received-Date: Mon, 04 Aug 2014 10:10:56 -0000
X-Groupsio-MsgNum: 20940
Content-Type: multipart/mixed; boundary=20cf300e52b7b00a9a04ffcaf3e9

--20cf300e52b7b00a9a04ffcaf3e9
Content-Type: multipart/alternative; boundary=20cf300e52b7b00a9604ffcaf3e7

--20cf300e52b7b00a9604ffcaf3e7
Content-Type: text/plain; charset=UTF-8

Hello!
I'm trying to build the core-image-base with Qt5 and gstreamer to use
QCamera on the target device. The platform configuration is imx6qsabrelite
which doesn't have X11.

However, I've got the following error during the gst-fsl-plugin compilation:

|
/home/mtuner/Work/_sources/fsl-bsp/build/tmp/sysroots/x86_64-linux/usr/libexec/cortexa9hf-vfp-neon-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.8.2/ld:
*cannot find -lXext*
| collect2: error: ld returned 1 exit status
| make[1]: *** [libmfw_gst_v4lsink.la] Error 1
| make[1]: Leaving directory
`/home/mtuner/Work/_sources/fsl-bsp/build/tmp/work/imx6qsabrelite-poky-linux-gnueabi/gst-fsl-plugin/3.0.11-r0/gst-fsl-plugins-3.0.11/src/misc/v4l_sink/src'
| make: *** [all-recursive] Error 1
| ERROR: oe_runmake failed
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_compile (log file is located at
/home/mtuner/Work/_sources/fsl-bsp/build/tmp/work/imx6qsabrelite-poky-linux-gnueabi/gst-fsl-plugin/3.0.11-r0/temp/log.do_compile.29766)
*ERROR: Task 601
(/home/mtuner/Work/_sources/fsl-bsp/sources/meta-fsl-arm/recipes-multimedia/gstreamer/gst-fsl-plugin_3.0.11.bb
<http://gst-fsl-plugin_3.0.11.bb>, do_compile) failed with exit code '1'*

How can I build the gstreamer without X11 dependencies?
Error log and my local.conf are attached.

-- 
Regards,
Nikolay Matyunin.
matyunin.n@gmail.com
skype: n_matyunin

--20cf300e52b7b00a9604ffcaf3e7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello!<div>I&#39;m trying to build the core-image-base wit=
h Qt5 and gstreamer to use QCamera on the target device. The platform confi=
guration is imx6qsabrelite which doesn&#39;t have X11.</div><div><br></div>

<div>However, I&#39;ve got the following error during the gst-fsl-plugin co=
mpilation:<br><br></div><div>| /home/mtuner/Work/_sources/fsl-bsp/build/tmp=
/sysroots/x86_64-linux/usr/libexec/cortexa9hf-vfp-neon-poky-linux-gnueabi/g=
cc/arm-poky-linux-gnueabi/4.8.2/ld: <b>cannot find -lXext</b></div>

<div>| collect2: error: ld returned 1 exit status</div><div>| make[1]: *** =
[<a href=3D"http://libmfw_gst_v4lsink.la">libmfw_gst_v4lsink.la</a>] Error =
1</div><div>| make[1]: Leaving directory `/home/mtuner/Work/_sources/fsl-bs=
p/build/tmp/work/imx6qsabrelite-poky-linux-gnueabi/gst-fsl-plugin/3.0.11-r0=
/gst-fsl-plugins-3.0.11/src/misc/v4l_sink/src&#39;</div>

<div>| make: *** [all-recursive] Error 1</div><div>| ERROR: oe_runmake fail=
ed</div><div>| WARNING: exit code 1 from a shell command.</div><div>| ERROR=
: Function failed: do_compile (log file is located at /home/mtuner/Work/_so=
urces/fsl-bsp/build/tmp/work/imx6qsabrelite-poky-linux-gnueabi/gst-fsl-plug=
in/3.0.11-r0/temp/log.do_compile.29766)</div>

<div><b>ERROR: Task 601 (/home/mtuner/Work/_sources/fsl-bsp/sources/meta-fs=
l-arm/recipes-multimedia/gstreamer/<a href=3D"http://gst-fsl-plugin_3.0.11.=
bb">gst-fsl-plugin_3.0.11.bb</a>, do_compile) failed with exit code &#39;1&=
#39;</b></div>

<div><br>How can I build the gstreamer without X11 dependencies?</div><div>=
Error log and my local.conf are attached.<br clear=3D"all"><div><br></div>-=
- <br><div dir=3D"ltr"><font color=3D"#999999">Regards,</font><div><font co=
lor=3D"#999999">Nikolay Matyunin.</font></div>

<div><font color=3D"#999999"><a href=3D"mailto:matyunin.n@gmail.com" target=
=3D"_blank">matyunin.n@gmail.com</a></font></div><div><font color=3D"#99999=
9">skype: n_matyunin</font></div></div>
</div></div>

--20cf300e52b7b00a9604ffcaf3e7--

--20cf300e52b7b00a9a04ffcaf3e9
Content-Type: application/octet-stream; name="local.conf"
Content-Disposition: attachment; filename="local.conf"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_hyfml88k0

QkJfTlVNQkVSX1RIUkVBRFMgPz0gIiR7QG9lLnV0aWxzLmNwdV9jb3VudCgpfSIKUEFSQUxMRUxf
TUFLRSA/PSAiLWogJHtAb2UudXRpbHMuY3B1X2NvdW50KCl9IgpNQUNISU5FID8/PSAnaW14NnFz
YWJyZWxpdGUnCkRJU1RSTyA/PSAncG9reScKUEFDS0FHRV9DTEFTU0VTID89ICJwYWNrYWdlX3Jw
bSIKCkVYVFJBX0lNQUdFX0ZFQVRVUkVTID0gImRlYnVnLXR3ZWFrcyBzc2gtc2VydmVyLW9wZW5z
c2ggIgpJTUFHRV9JTlNUQUxMX2FwcGVuZCA9ICIgZ2NjIGcrKyBiaW51dGlscyBsaWJnY2MgbGli
Z2NjLWRldiBsaWJzdGRjKysgbGlic3RkYysrLWRldiBsaWJzdGRjKystc3RhdGljZGV2IFwKdHNs
aWItY29uZiB0c2xpYi10ZXN0cyB0c2xpYi1jYWxpYnJhdGUgXApvcGVuc3NoLXNmdHAtc2VydmVy
IFwKZ2RiIFwKYWxzYS1saWIgYWxzYS10b29scyBhbHNhLXN0YXRlIGFsc2EtdXRpbHMtYWxzYWNv
bmYgXAp0c2xpYiBldnRlc3QgbmFubyBxdGJhc2UgcXRiYXNlLWZvbnRzIHF0YmFzZS1wbHVnaW5z
IGNpbmVtYXRpY2V4cGVyaWVuY2UgXApnc3RyZWFtZXIgXAppMmMtdG9vbHMgXApjYWlybyBwYW5n
byBmb250Y29uZmlnIGZyZWV0eXBlIHB1bHNlYXVkaW8gZGJ1cyBxdG11bHRpbWVkaWEgXApxdG11
bHRpbWVkaWEtcGx1Z2lucyBxdG11bHRpbWVkaWEtcW1scGx1Z2lucyBcCmdzdC1tZXRhLXZpZGVv
IFwKZ3N0LWZzbC1wbHVnaW4gXApnc3QtcGx1Z2lucy1iYXNlLWFwcCBcCmdzdC1wbHVnaW5zLWJh
c2UgXApnc3QtcGx1Z2lucy1nb29kIFwKZ3N0LXBsdWdpbnMtZ29vZC1ydHNwIFwKZ3N0LXBsdWdp
bnMtZ29vZC11ZHAgXApnc3QtcGx1Z2lucy1nb29kLXJ0cG1hbmFnZXIgXApnc3QtcGx1Z2lucy1n
b29kLXJ0cCBcCmdzdC1wbHVnaW5zLWdvb2QtdmlkZW80bGludXgyIFwKcGFja2FnZWdyb3VwLWZz
bC1nc3RyZWFtZXIgXApwYWNrYWdlZ3JvdXAtZnNsLXRvb2xzLXRlc3RhcHBzIFwKcGFja2FnZWdy
b3VwLWZzbC10b29scy1iZW5jaG1hcmsgXApxdHF1aWNrY29udHJvbHMtcW1scGx1Z2lucyBxdGdy
YXBoaWNhbGVmZmVjdHMtcW1scGx1Z2lucyBjcHVmcmVxdXRpbHMgIgpESVNUUk9fRkVBVFVSRVNf
cmVtb3ZlID0gIngxMSB3YXlsYW5kIgpQQUNLQUdFQ09ORklHX2FwcGVuZF9wbi1xdGJhc2UgPSAi
IGFjY2Vzc2liaWxpdHkiClBBQ0tBR0VDT05GSUdfYXBwZW5kX3BuLXF0bXVsdGltZWRpYSA9ICIg
Z3N0cmVhbWVyMDEwIgoKClVTRVJfQ0xBU1NFUyA/PSAiYnVpbGRzdGF0cyBpbWFnZS1ta2xpYnMg
aW1hZ2UtcHJlbGluayIKUEFUQ0hSRVNPTFZFID0gIm5vb3AiCkJCX0RJU0tNT05fRElSUyA9ICJc
CiAgICBTVE9QVEFTS1MsJHtUTVBESVJ9LDFHLDEwMEsgXAogICAgU1RPUFRBU0tTLCR7RExfRElS
fSwxRywxMDBLIFwKICAgIFNUT1BUQVNLUywke1NTVEFURV9ESVJ9LDFHLDEwMEsgXAogICAgQUJP
UlQsJHtUTVBESVJ9LDEwME0sMUsgXAogICAgQUJPUlQsJHtETF9ESVJ9LDEwME0sMUsgXAogICAg
QUJPUlQsJHtTU1RBVEVfRElSfSwxMDBNLDFLIiAKUEFDS0FHRUNPTkZJR19wbi1xZW11LW5hdGl2
ZSA9ICJzZGwiClBBQ0tBR0VDT05GSUdfcG4tbmF0aXZlc2RrLXFlbXUgPSAic2RsIgpBU1NVTUVf
UFJPVklERUQgKz0gImxpYnNkbC1uYXRpdmUiCkNPTkZfVkVSU0lPTiA9ICIxIgoKQkJfTlVNQkVS
X1RIUkVBRFMgPSAnOCcKUEFSQUxMRUxfTUFLRSA9ICctaiA4JwoKRExfRElSID89ICIke0JTUERJ
Un0vZG93bmxvYWRzLyIKQUNDRVBUX0ZTTF9FVUxBID0gIiIK

--20cf300e52b7b00a9a04ffcaf3e9
Content-Type: application/octet-stream; name="log.do_compile.29766"
Content-Disposition: attachment; filename="log.do_compile.29766"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_hyfmm40f1

REVCVUc6IFNJVEUgZmlsZXMgWydlbmRpYW4tbGl0dGxlJywgJ2JpdC0zMicsICdhcm0tY29tbW9u
JywgJ2NvbW1vbi1saW51eCcsICdjb21tb24tZ2xpYmMnLCAnYXJtLWxpbnV4JywgJ2FybS1saW51
eC1nbnVlYWJpJywgJ2NvbW1vbiddCkRFQlVHOiBFeGVjdXRpbmcgc2hlbGwgZnVuY3Rpb24gZG9f
Y29tcGlsZQpOT1RFOiBtYWtlIC1qIDgKTWFraW5nIGFsbCBpbiBsaWJzCm1ha2VbMV06IEVudGVy
aW5nIGRpcmVjdG9yeSBgL2hvbWUvbXR1bmVyL1dvcmsvX3NvdXJjZXMvZnNsLWJzcC9idWlsZC90
bXAvd29yay9pbXg2cXNhYnJlbGl0ZS1wb2t5LWxpbnV4LWdudWVhYmkvZ3N0LWZzbC1wbHVnaW4v
My4wLjExLXIwL2dzdC1mc2wtcGx1Z2lucy0zLjAuMTEvbGlicycKbWFrZVsxXTogTm90aGluZyB0
byBiZSBkb25lIGZvciBgYWxsJy4KbWFrZVsxXTogTGVhdmluZyBkaXJlY3RvcnkgYC9ob21lL210
dW5lci9Xb3JrL19zb3VyY2VzL2ZzbC1ic3AvYnVpbGQvdG1wL3dvcmsvaW14NnFzYWJyZWxpdGUt
cG9reS1saW51eC1nbnVlYWJpL2dzdC1mc2wtcGx1Z2luLzMuMC4xMS1yMC9nc3QtZnNsLXBsdWdp
bnMtMy4wLjExL2xpYnMnCk1ha2luZyBhbGwgaW4gc3JjL3BhcnNlci9haXVyL3NyYwptYWtlWzFd
OiBFbnRlcmluZyBkaXJlY3RvcnkgYC9ob21lL210dW5lci9Xb3JrL19zb3VyY2VzL2ZzbC1ic3Av
YnVpbGQvdG1wL3dvcmsvaW14NnFzYWJyZWxpdGUtcG9reS1saW51eC1nbnVlYWJpL2dzdC1mc2wt
cGx1Z2luLzMuMC4xMS1yMC9nc3QtZnNsLXBsdWdpbnMtMy4wLjExL3NyYy9wYXJzZXIvYWl1ci9z
cmMnCm1ha2VbMV06IE5vdGhpbmcgdG8gYmUgZG9uZSBmb3IgYGFsbCcuCm1ha2VbMV06IExlYXZp
bmcgZGlyZWN0b3J5IGAvaG9tZS9tdHVuZXIvV29yay9fc291cmNlcy9mc2wtYnNwL2J1aWxkL3Rt
cC93b3JrL2lteDZxc2FicmVsaXRlLXBva3ktbGludXgtZ251ZWFiaS9nc3QtZnNsLXBsdWdpbi8z
LjAuMTEtcjAvZ3N0LWZzbC1wbHVnaW5zLTMuMC4xMS9zcmMvcGFyc2VyL2FpdXIvc3JjJwpNYWtp
bmcgYWxsIGluIHNyYy9hdWRpby9iZWVwL3NyYwptYWtlWzFdOiBFbnRlcmluZyBkaXJlY3Rvcnkg
YC9ob21lL210dW5lci9Xb3JrL19zb3VyY2VzL2ZzbC1ic3AvYnVpbGQvdG1wL3dvcmsvaW14NnFz
YWJyZWxpdGUtcG9reS1saW51eC1nbnVlYWJpL2dzdC1mc2wtcGx1Z2luLzMuMC4xMS1yMC9nc3Qt
ZnNsLXBsdWdpbnMtMy4wLjExL3NyYy9hdWRpby9iZWVwL3NyYycKbWFrZVsxXTogTm90aGluZyB0
byBiZSBkb25lIGZvciBgYWxsJy4KbWFrZVsxXTogTGVhdmluZyBkaXJlY3RvcnkgYC9ob21lL210
dW5lci9Xb3JrL19zb3VyY2VzL2ZzbC1ic3AvYnVpbGQvdG1wL3dvcmsvaW14NnFzYWJyZWxpdGUt
cG9reS1saW51eC1nbnVlYWJpL2dzdC1mc2wtcGx1Z2luLzMuMC4xMS1yMC9nc3QtZnNsLXBsdWdp
bnMtMy4wLjExL3NyYy9hdWRpby9iZWVwL3NyYycKTWFraW5nIGFsbCBpbiBzcmMvbWlzYy92NGxf
c2luay9zcmMKbWFrZVsxXTogRW50ZXJpbmcgZGlyZWN0b3J5IGAvaG9tZS9tdHVuZXIvV29yay9f
c291cmNlcy9mc2wtYnNwL2J1aWxkL3RtcC93b3JrL2lteDZxc2FicmVsaXRlLXBva3ktbGludXgt
Z251ZWFiaS9nc3QtZnNsLXBsdWdpbi8zLjAuMTEtcjAvZ3N0LWZzbC1wbHVnaW5zLTMuMC4xMS9z
cmMvbWlzYy92NGxfc2luay9zcmMnCi4uLy4uLy4uLy4uL2FybS1wb2t5LWxpbnV4LWdudWVhYmkt
bGlidG9vbCAgLS10YWc9Q0MgICAtLW1vZGU9bGluayBhcm0tcG9reS1saW51eC1nbnVlYWJpLWdj
YyAgLW1hcmNoPWFybXY3LWEgLW10aHVtYi1pbnRlcndvcmsgLW1mbG9hdC1hYmk9aGFyZCAtbWZw
dT1uZW9uIC1tdHVuZT1jb3J0ZXgtYTkgLS1zeXNyb290PS9ob21lL210dW5lci9Xb3JrL19zb3Vy
Y2VzL2ZzbC1ic3AvYnVpbGQvdG1wL3N5c3Jvb3RzL2lteDZxc2FicmVsaXRlIC1JL3Vzci9zcmMv
bGludXgtaGVhZGVycy0yLjYuMzUtMTAwMC1saW5hcm8taW14NS9pbmNsdWRlICAgICAgIC1PMiAt
cHRocmVhZCAtSS9ob21lL210dW5lci9Xb3JrL19zb3VyY2VzL2ZzbC1ic3AvYnVpbGQvdG1wL3N5
c3Jvb3RzL2lteDZxc2FicmVsaXRlL3Vzci9pbmNsdWRlL2dzdHJlYW1lci0wLjEwIC1JL2hvbWUv
bXR1bmVyL1dvcmsvX3NvdXJjZXMvZnNsLWJzcC9idWlsZC90bXAvc3lzcm9vdHMvaW14NnFzYWJy
ZWxpdGUvdXNyL2luY2x1ZGUvZ2xpYi0yLjAgLUkvaG9tZS9tdHVuZXIvV29yay9fc291cmNlcy9m
c2wtYnNwL2J1aWxkL3RtcC9zeXNyb290cy9pbXg2cXNhYnJlbGl0ZS91c3IvbGliL2dsaWItMi4w
L2luY2x1ZGUgLUkvaG9tZS9tdHVuZXIvV29yay9fc291cmNlcy9mc2wtYnNwL2J1aWxkL3RtcC9z
eXNyb290cy9pbXg2cXNhYnJlbGl0ZS91c3IvaW5jbHVkZS9saWJ4bWwyICAtZlBJQyAtZm5vLW9t
aXQtZnJhbWUtcG9pbnRlciAtREVOQUJMRV9UVk9VVCAtRF9NWDYgLUkuLi8uLi8uLi8uLi9pbmMv
cGx1Z2luIC1JLi4vLi4vLi4vLi4vaW5jL21pc2MgIC1JLiAtSS4uLy4uLy4uLy4uL2xpYnMvZ3N0
YnVmbWV0YSAtRFVTRV9YMTEgLURTVVNQRU5EX1NVUFBPUlQgIC1PMiAtcGlwZSAtZyAtZmVsaW1p
bmF0ZS11bnVzZWQtZGVidWctdHlwZXMgLUkvaG9tZS9tdHVuZXIvV29yay9fc291cmNlcy9mc2wt
YnNwL2J1aWxkL3RtcC9zeXNyb290cy9pbXg2cXNhYnJlbGl0ZS91c3IvaW5jbHVkZS9pbXgtbW0v
YXVkaW8tY29kZWMgLUkvaG9tZS9tdHVuZXIvV29yay9fc291cmNlcy9mc2wtYnNwL2J1aWxkL3Rt
cC9zeXNyb290cy9pbXg2cXNhYnJlbGl0ZS91c3IvaW5jbHVkZS9pbXgtbW0vdmlkZW8tY29kZWMg
LUkvaG9tZS9tdHVuZXIvV29yay9fc291cmNlcy9mc2wtYnNwL2J1aWxkL3RtcC9zeXNyb290cy9p
bXg2cXNhYnJlbGl0ZS91c3IvaW5jbHVkZS9pbXgtbW0vcGFyc2VyIC1JL2hvbWUvbXR1bmVyL1dv
cmsvX3NvdXJjZXMvZnNsLWJzcC9idWlsZC90bXAvc3lzcm9vdHMvaW14NnFzYWJyZWxpdGUvdXNy
L2luY2x1ZGUvaW14LW1tL3ZwdSAgLURBUk0gLURfR05VQ18gLW1vZHVsZSAtYXZvaWQtdmVyc2lv
biAtZXhwb3J0LXN5bWJvbHMtcmVnZXggXypcKGdzdF9cfEdzdFx8R1NUX1wpLiogLVdsLC1PMSAt
V2wsLS1oYXNoLXN0eWxlPWdudSAtV2wsLS1hcy1uZWVkZWQgLW8gbGlibWZ3X2dzdF92NGxzaW5r
LmxhIC1ycGF0aCAvdXNyL2xpYi9nc3RyZWFtZXItMC4xMCBsaWJtZndfZ3N0X3Y0bHNpbmtfbGEt
bWZ3X2dzdF9mYi5sbyBsaWJtZndfZ3N0X3Y0bHNpbmtfbGEtbWZ3X2dzdF92NGwubG8gbGlibWZ3
X2dzdF92NGxzaW5rX2xhLW1md19nc3RfdjRsX2J1ZmZlci5sbyBsaWJtZndfZ3N0X3Y0bHNpbmtf
bGEtbWZ3X2dzdF92NGxzaW5rLmxvIGxpYm1md19nc3RfdjRsc2lua19sYS1tZndfZ3N0X3Y0bF94
bGliLmxvIGxpYm1md19nc3RfdjRsc2lua19sYS1tZndfZ3N0X3hsaWIubG8gbGlibWZ3X2dzdF92
NGxzaW5rX2xhLW1md19nc3RfdjRsX3N1c3BlbmQubG8gLWxnc3RiYXNlLTAuMTAgLWxnc3RyZWFt
ZXItMC4xMCAtbGdvYmplY3QtMi4wIC1sZ21vZHVsZS0yLjAgLXB0aHJlYWQgLWxndGhyZWFkLTIu
MCAtcHRocmVhZCAtbGdsaWItMi4wIC1seG1sMiAgLWxnc3R2aWRlby0wLjEwIC1sZ3N0aW50ZXJm
YWNlcy0wLjEwIC4uLy4uLy4uLy4uL2xpYnMvbGliZ3N0ZnNsLTAuMTAubGEgLWxYMTEgLWxYZXh0
ICAtbHJ0IAphcm0tcG9reS1saW51eC1nbnVlYWJpLWxpYnRvb2w6IGxpbms6IHJtIC1mciAgLmxp
YnMvbGlibWZ3X2dzdF92NGxzaW5rLmV4cCAubGlicy9saWJtZndfZ3N0X3Y0bHNpbmsudmVyCmFy
bS1wb2t5LWxpbnV4LWdudWVhYmktbGlidG9vbDogbGluazogYXJtLXBva3ktbGludXgtZ251ZWFi
aS1ubSAgLmxpYnMvbGlibWZ3X2dzdF92NGxzaW5rX2xhLW1md19nc3RfZmIubyAubGlicy9saWJt
ZndfZ3N0X3Y0bHNpbmtfbGEtbWZ3X2dzdF92NGwubyAubGlicy9saWJtZndfZ3N0X3Y0bHNpbmtf
bGEtbWZ3X2dzdF92NGxfYnVmZmVyLm8gLmxpYnMvbGlibWZ3X2dzdF92NGxzaW5rX2xhLW1md19n
c3RfdjRsc2luay5vIC5saWJzL2xpYm1md19nc3RfdjRsc2lua19sYS1tZndfZ3N0X3Y0bF94bGli
Lm8gLmxpYnMvbGlibWZ3X2dzdF92NGxzaW5rX2xhLW1md19nc3RfeGxpYi5vIC5saWJzL2xpYm1m
d19nc3RfdjRsc2lua19sYS1tZndfZ3N0X3Y0bF9zdXNwZW5kLm8gICB8IHNlZCAtbiAtZSAncy9e
LipbCSBdXChbQUJDREdJUlNUV11bQUJDREdJUlNUV10qXClbCSBdWwkgXSpcKFtfQS1aYS16XVtf
QS1aYS16MC05XSpcKSQvXDEgXDIgXDIvcCcgfCBzZWQgJy8gX19nbnVfbHRvL2QnIHwgc2VkICdz
Ly4qIC8vJyB8IHNvcnQgfCB1bmlxID4gLmxpYnMvbGlibWZ3X2dzdF92NGxzaW5rLmV4cAphcm0t
cG9reS1saW51eC1nbnVlYWJpLWxpYnRvb2w6IGxpbms6IC9iaW4vZ3JlcCAtRSAtZSAiXyooZ3N0
X3xHc3R8R1NUXykuKiIgIi5saWJzL2xpYm1md19nc3RfdjRsc2luay5leHAiID4gIi5saWJzL2xp
Ym1md19nc3RfdjRsc2luay5leHBUIgphcm0tcG9reS1saW51eC1nbnVlYWJpLWxpYnRvb2w6IGxp
bms6IG12IC1mICIubGlicy9saWJtZndfZ3N0X3Y0bHNpbmsuZXhwVCIgIi5saWJzL2xpYm1md19n
c3RfdjRsc2luay5leHAiCmFybS1wb2t5LWxpbnV4LWdudWVhYmktbGlidG9vbDogbGluazogZWNo
byAieyBnbG9iYWw6IiA+IC5saWJzL2xpYm1md19nc3RfdjRsc2luay52ZXIKYXJtLXBva3ktbGlu
dXgtZ251ZWFiaS1saWJ0b29sOiBsaW5rOiAgY2F0IC5saWJzL2xpYm1md19nc3RfdjRsc2luay5l
eHAgfCBzZWQgLWUgInMvXCguKlwpL1wxOy8iID4+IC5saWJzL2xpYm1md19nc3RfdjRsc2luay52
ZXIKYXJtLXBva3ktbGludXgtZ251ZWFiaS1saWJ0b29sOiBsaW5rOiAgZWNobyAibG9jYWw6ICo7
IH07IiA+PiAubGlicy9saWJtZndfZ3N0X3Y0bHNpbmsudmVyCmFybS1wb2t5LWxpbnV4LWdudWVh
YmktbGlidG9vbDogbGluazogIGFybS1wb2t5LWxpbnV4LWdudWVhYmktZ2NjICAtbWFyY2g9YXJt
djctYSAtbXRodW1iLWludGVyd29yayAtbWZsb2F0LWFiaT1oYXJkIC1tZnB1PW5lb24gLW10dW5l
PWNvcnRleC1hOSAtLXN5c3Jvb3Q9L2hvbWUvbXR1bmVyL1dvcmsvX3NvdXJjZXMvZnNsLWJzcC9i
dWlsZC90bXAvc3lzcm9vdHMvaW14NnFzYWJyZWxpdGUgLXNoYXJlZCAgLWZQSUMgLURQSUMgIC5s
aWJzL2xpYm1md19nc3RfdjRsc2lua19sYS1tZndfZ3N0X2ZiLm8gLmxpYnMvbGlibWZ3X2dzdF92
NGxzaW5rX2xhLW1md19nc3RfdjRsLm8gLmxpYnMvbGlibWZ3X2dzdF92NGxzaW5rX2xhLW1md19n
c3RfdjRsX2J1ZmZlci5vIC5saWJzL2xpYm1md19nc3RfdjRsc2lua19sYS1tZndfZ3N0X3Y0bHNp
bmsubyAubGlicy9saWJtZndfZ3N0X3Y0bHNpbmtfbGEtbWZ3X2dzdF92NGxfeGxpYi5vIC5saWJz
L2xpYm1md19nc3RfdjRsc2lua19sYS1tZndfZ3N0X3hsaWIubyAubGlicy9saWJtZndfZ3N0X3Y0
bHNpbmtfbGEtbWZ3X2dzdF92NGxfc3VzcGVuZC5vICAgLi4vLi4vLi4vLi4vbGlicy8ubGlicy9s
aWJnc3Rmc2wtMC4xMC5zbyAtTC9ob21lL210dW5lci9Xb3JrL19zb3VyY2VzL2ZzbC1ic3AvYnVp
bGQvdG1wL3N5c3Jvb3RzL2lteDZxc2FicmVsaXRlL3Vzci9saWIgL2hvbWUvbXR1bmVyL1dvcmsv
X3NvdXJjZXMvZnNsLWJzcC9idWlsZC90bXAvc3lzcm9vdHMvaW14NnFzYWJyZWxpdGUvdXNyL2xp
Yi9saWJnc3R2aWRlby0wLjEwLnNvIC9ob21lL210dW5lci9Xb3JrL19zb3VyY2VzL2ZzbC1ic3Av
YnVpbGQvdG1wL3N5c3Jvb3RzL2lteDZxc2FicmVsaXRlL3Vzci9saWIvbGliZ3N0YmFzZS0wLjEw
LnNvIC9ob21lL210dW5lci9Xb3JrL19zb3VyY2VzL2ZzbC1ic3AvYnVpbGQvdG1wL3N5c3Jvb3Rz
L2lteDZxc2FicmVsaXRlL3Vzci9saWIvbGliZ3N0aW50ZXJmYWNlcy0wLjEwLnNvIC9ob21lL210
dW5lci9Xb3JrL19zb3VyY2VzL2ZzbC1ic3AvYnVpbGQvdG1wL3N5c3Jvb3RzL2lteDZxc2FicmVs
aXRlL3Vzci9saWIvbGliZ3N0cmVhbWVyLTAuMTAuc28gL2hvbWUvbXR1bmVyL1dvcmsvX3NvdXJj
ZXMvZnNsLWJzcC9idWlsZC90bXAvc3lzcm9vdHMvaW14NnFzYWJyZWxpdGUvdXNyL2xpYi9saWJn
b2JqZWN0LTIuMC5zbyAvaG9tZS9tdHVuZXIvV29yay9fc291cmNlcy9mc2wtYnNwL2J1aWxkL3Rt
cC9zeXNyb290cy9pbXg2cXNhYnJlbGl0ZS91c3IvbGliL2xpYmZmaS5zbyAvaG9tZS9tdHVuZXIv
V29yay9fc291cmNlcy9mc2wtYnNwL2J1aWxkL3RtcC9zeXNyb290cy9pbXg2cXNhYnJlbGl0ZS91
c3IvbGliL2xpYmdtb2R1bGUtMi4wLnNvIC9ob21lL210dW5lci9Xb3JrL19zb3VyY2VzL2ZzbC1i
c3AvYnVpbGQvdG1wL3N5c3Jvb3RzL2lteDZxc2FicmVsaXRlL3Vzci9saWIvbGliZ3RocmVhZC0y
LjAuc28gL2hvbWUvbXR1bmVyL1dvcmsvX3NvdXJjZXMvZnNsLWJzcC9idWlsZC90bXAvc3lzcm9v
dHMvaW14NnFzYWJyZWxpdGUvdXNyL2xpYi9saWJnbGliLTIuMC5zbyAtbHB0aHJlYWQgL2hvbWUv
bXR1bmVyL1dvcmsvX3NvdXJjZXMvZnNsLWJzcC9idWlsZC90bXAvc3lzcm9vdHMvaW14NnFzYWJy
ZWxpdGUvdXNyL2xpYi9saWJ4bWwyLnNvIC1seiAtbG0gLWxpcHUgL2hvbWUvbXR1bmVyL1dvcmsv
X3NvdXJjZXMvZnNsLWJzcC9idWlsZC90bXAvc3lzcm9vdHMvaW14NnFzYWJyZWxpdGUvdXNyL2xp
Yi9saWJYMTEuc28gL2hvbWUvbXR1bmVyL1dvcmsvX3NvdXJjZXMvZnNsLWJzcC9idWlsZC90bXAv
c3lzcm9vdHMvaW14NnFzYWJyZWxpdGUvdXNyL2xpYi9saWJ4Y2Iuc28gL2hvbWUvbXR1bmVyL1dv
cmsvX3NvdXJjZXMvZnNsLWJzcC9idWlsZC90bXAvc3lzcm9vdHMvaW14NnFzYWJyZWxpdGUvdXNy
L2xpYi9saWJYYXUuc28gL2hvbWUvbXR1bmVyL1dvcmsvX3NvdXJjZXMvZnNsLWJzcC9idWlsZC90
bXAvc3lzcm9vdHMvaW14NnFzYWJyZWxpdGUvdXNyL2xpYi9saWJYZG1jcC5zbyAtbGRsIC1sWGV4
dCAtbHJ0ICAtbWFyY2g9YXJtdjctYSAtbXRodW1iLWludGVyd29yayAtbWZsb2F0LWFiaT1oYXJk
IC1tZnB1PW5lb24gLW10dW5lPWNvcnRleC1hOSAtLXN5c3Jvb3Q9L2hvbWUvbXR1bmVyL1dvcmsv
X3NvdXJjZXMvZnNsLWJzcC9idWlsZC90bXAvc3lzcm9vdHMvaW14NnFzYWJyZWxpdGUgLU8yIC1w
dGhyZWFkIC1PMiAtV2wsLU8xIC1XbCwtLWhhc2gtc3R5bGU9Z251IC1XbCwtLWFzLW5lZWRlZCAt
cHRocmVhZCAtcHRocmVhZCAgIC1wdGhyZWFkIC1XbCwtc29uYW1lIC1XbCxsaWJtZndfZ3N0X3Y0
bHNpbmsuc28gLVdsLC12ZXJzaW9uLXNjcmlwdCAtV2wsLmxpYnMvbGlibWZ3X2dzdF92NGxzaW5r
LnZlciAtbyAubGlicy9saWJtZndfZ3N0X3Y0bHNpbmsuc28KL2hvbWUvbXR1bmVyL1dvcmsvX3Nv
dXJjZXMvZnNsLWJzcC9idWlsZC90bXAvc3lzcm9vdHMveDg2XzY0LWxpbnV4L3Vzci9saWJleGVj
L2NvcnRleGE5aGYtdmZwLW5lb24tcG9reS1saW51eC1nbnVlYWJpL2djYy9hcm0tcG9reS1saW51
eC1nbnVlYWJpLzQuOC4yL2xkOiBjYW5ub3QgZmluZCAtbFhleHQKY29sbGVjdDI6IGVycm9yOiBs
ZCByZXR1cm5lZCAxIGV4aXQgc3RhdHVzCm1ha2VbMV06ICoqKiBbbGlibWZ3X2dzdF92NGxzaW5r
LmxhXSBFcnJvciAxCm1ha2VbMV06IExlYXZpbmcgZGlyZWN0b3J5IGAvaG9tZS9tdHVuZXIvV29y
ay9fc291cmNlcy9mc2wtYnNwL2J1aWxkL3RtcC93b3JrL2lteDZxc2FicmVsaXRlLXBva3ktbGlu
dXgtZ251ZWFiaS9nc3QtZnNsLXBsdWdpbi8zLjAuMTEtcjAvZ3N0LWZzbC1wbHVnaW5zLTMuMC4x
MS9zcmMvbWlzYy92NGxfc2luay9zcmMnCm1ha2U6ICoqKiBbYWxsLXJlY3Vyc2l2ZV0gRXJyb3Ig
MQpFUlJPUjogb2VfcnVubWFrZSBmYWlsZWQKV0FSTklORzogZXhpdCBjb2RlIDEgZnJvbSBhIHNo
ZWxsIGNvbW1hbmQuCkVSUk9SOiBGdW5jdGlvbiBmYWlsZWQ6IGRvX2NvbXBpbGUgKGxvZyBmaWxl
IGlzIGxvY2F0ZWQgYXQgL2hvbWUvbXR1bmVyL1dvcmsvX3NvdXJjZXMvZnNsLWJzcC9idWlsZC90
bXAvd29yay9pbXg2cXNhYnJlbGl0ZS1wb2t5LWxpbnV4LWdudWVhYmkvZ3N0LWZzbC1wbHVnaW4v
My4wLjExLXIwL3RlbXAvbG9nLmRvX2NvbXBpbGUuMjk3NjYpCg==

--20cf300e52b7b00a9a04ffcaf3e9--
