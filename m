Return-Path: <yuq825@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6DAA0E00825; Wed, 18 Feb 2015 08:45:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (yuq825[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ie0-f177.google.com (mail-ie0-f177.google.com
	[209.85.223.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A02BE00815
	for <yocto@yoctoproject.org>; Wed, 18 Feb 2015 08:44:56 -0800 (PST)
Received: by iecrd18 with SMTP id rd18so2611876iec.8
	for <yocto@yoctoproject.org>; Wed, 18 Feb 2015 08:44:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=jvgze77Gh+u93xX28bGDorNz4B55DmIJfirnZ4zDkPA=;
	b=oJKQMcdrxbMWmzcEb6KVqnpWbTJqvSGgbchR0DPVa/ADvmw1d958mWX9uERjT4e20O
	tMw3E536JO6QXIT7MQvqV0w0e3Dtro6cT6lGDVbP5MJ1UqHuTyq+/5s+MqC56qrJ8tgq
	SJsFlvAfB7amYCNZQLnC4IZtuOjwjlanE8fdmWRDRD8dR1ZkfTtPWQnbCPmOX9add9H2
	k13azq5nQHIze6olahWkdgR2pwX98T6Y5M4Iy06JJH5rbBgGvPJnyrR0rIh2KrEliEvV
	SOgryVsIRETm0J68VKRWQ6XBXpJvweLJhpxPLGPkabCodmjh+2QjTwdlPRWVA9ezlkgY
	fn+w==
MIME-Version: 1.0
X-Received: by 10.107.17.89 with SMTP id z86mr318490ioi.52.1424277896318; Wed,
	18 Feb 2015 08:44:56 -0800 (PST)
Received: by 10.36.52.75 with HTTP; Wed, 18 Feb 2015 08:44:56 -0800 (PST)
In-Reply-To: <CAKGbVbujEzXZsTWZN0Zu1w1DkkBRFFMSqdA6jQCS6e7JouCDgw@mail.gmail.com>
References: <CAKGbVbujEzXZsTWZN0Zu1w1DkkBRFFMSqdA6jQCS6e7JouCDgw@mail.gmail.com>
Date: Thu, 19 Feb 2015 00:44:56 +0800
Message-ID: <CAKGbVbu_-yj2PtcbrV4EnhhrXtjF5aW1Ufr-toccU7jhOdGUsA@mail.gmail.com>
From: Qiang Yu <yuq825@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Cc: ebutera@users.sourceforge.net, Sergey Lapin <slapin@ossfans.org>,
	Nicolas Aguirre <aguirre.nicolas@gmail.com>
Subject: Re: [meta-sunxi] handle no soname shared library
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
X-List-Received-Date: Wed, 18 Feb 2015 16:45:02 -0000
Content-Type: multipart/alternative; boundary=001a113f39801265ec050f5f8a2b

--001a113f39801265ec050f5f8a2b
Content-Type: text/plain; charset=UTF-8

do it by adding:

python package_do_shlibs_append() {

    pn = d.getVar('PN', True)

    libdir = d.getVar('libdir', True)

    shlibs_file = os.path.join(shlibswork_dir, pn + ".list")

    fd = open(shlibs_file, 'w')

    fd.write('libEGL.so:' + libdir + ':' + ver + '\n')

    fd.write('libGLESv1_CM.so:' + libdir + ':' + ver + '\n')

    fd.write('libGLESv2.so:' + libdir + ':' + ver + '\n')

    fd.close()

}

On Tue, Feb 17, 2015 at 10:16 PM, Qiang Yu <yuq825@gmail.com> wrote:

> Hi all,
>
> I'm using meta-sunxi which provides binary libegl & libgles shared library
> files. They all
> link to a libMali.so file having no SONAME field in it. So it won't
> register libegl & libgles
> to shlib2 list when do_package, and other packages linking libegl &
> libgles won't add
> runtime dependent automatically at do_package.
>
> Any ideas to solve this problem? Why can't yocto just use file name when
> SONAME is
> missing?
>
> Regards,
> Qiang
>

--001a113f39801265ec050f5f8a2b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: base64

PGRpdiBkaXI9Imx0ciI+ZG8gaXQgYnkgYWRkaW5nOjxkaXY+PGJyPjwvZGl2PjxkaXY+PGRpdj5w
eXRob24gcGFja2FnZV9kb19zaGxpYnNfYXBwZW5kKCkgeyDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoDwvZGl2PjxkaXY+wqAgwqAgcG4gPSBkLmdldFZhcigm
IzM5O1BOJiMzOTssIFRydWUpIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgPC9kaXY+PGRpdj7CoCDCoCBsaWJkaXIgPSBkLmdldFZhcigmIzM5
O2xpYmRpciYjMzk7LCBUcnVlKSDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoDwvZGl2PjxkaXY+wqAgwqAgc2hsaWJzX2ZpbGUgPSBvcy5wYXRoLmpvaW4oc2hsaWJz
d29ya19kaXIsIHBuICsgJnF1b3Q7Lmxpc3QmcXVvdDspIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgwqA8L2Rpdj48ZGl2PsKg
IMKgIGZkID0gb3BlbihzaGxpYnNfZmlsZSwgJiMzOTt3JiMzOTspIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgPC9kaXY+PGRpdj7CoCDCoCBmZC53
cml0ZSgmIzM5O2xpYkVHTC5zbzomIzM5OyArIGxpYmRpciArICYjMzk7OiYjMzk7ICsgdmVyICsg
JiMzOTtcbiYjMzk7KSDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoMKgPC9kaXY+PGRpdj7CoCDCoCBmZC53cml0
ZSgmIzM5O2xpYkdMRVN2MV9DTS5zbzomIzM5OyArIGxpYmRpciArICYjMzk7OiYjMzk7ICsgdmVy
ICsgJiMzOTtcbiYjMzk7KSDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoMKgPC9kaXY+PGRpdj7CoCDCoCBmZC53cml0ZSgmIzM5
O2xpYkdMRVN2Mi5zbzomIzM5OyArIGxpYmRpciArICYjMzk7OiYjMzk7ICsgdmVyICsgJiMzOTtc
biYjMzk7KSDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoDwvZGl2PjxkaXY+wqAgwqAgZmQuY2xvc2UoKSDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoMKgPC9kaXY+PGRpdj59PC9kaXY+PC9kaXY+PC9kaXY+PGRpdiBjbGFzcz0i
Z21haWxfZXh0cmEiPjxicj48ZGl2IGNsYXNzPSJnbWFpbF9xdW90ZSI+T24gVHVlLCBGZWIgMTcs
IDIwMTUgYXQgMTA6MTYgUE0sIFFpYW5nIFl1IDxzcGFuIGRpcj0ibHRyIj4mbHQ7PGEgaHJlZj0i
bWFpbHRvOnl1cTgyNUBnbWFpbC5jb20iIHRhcmdldD0iX2JsYW5rIj55dXE4MjVAZ21haWwuY29t
PC9hPiZndDs8L3NwYW4+IHdyb3RlOjxicj48YmxvY2txdW90ZSBjbGFzcz0iZ21haWxfcXVvdGUi
IHN0eWxlPSJtYXJnaW46MCAwIDAgLjhleDtib3JkZXItbGVmdDoxcHggI2NjYyBzb2xpZDtwYWRk
aW5nLWxlZnQ6MWV4Ij48ZGl2IGRpcj0ibHRyIj5IaSBhbGwsPGRpdj48YnI+PC9kaXY+PGRpdj5J
JiMzOTttIHVzaW5nIG1ldGEtc3VueGkgd2hpY2ggcHJvdmlkZXMgYmluYXJ5IGxpYmVnbCAmYW1w
OyBsaWJnbGVzIHNoYXJlZCBsaWJyYXJ5IGZpbGVzLiBUaGV5IGFsbDwvZGl2PjxkaXY+bGluayB0
byBhIGxpYk1hbGkuc28gZmlsZSBoYXZpbmcgbm8gU09OQU1FIGZpZWxkIGluIGl0LiBTbyBpdCB3
b24mIzM5O3QgcmVnaXN0ZXIgbGliZWdsICZhbXA7IGxpYmdsZXM8L2Rpdj48ZGl2PnRvIHNobGli
MiBsaXN0IHdoZW4gZG9fcGFja2FnZSwgYW5kIG90aGVyIHBhY2thZ2VzIGxpbmtpbmcgbGliZWds
ICZhbXA7IGxpYmdsZXMgd29uJiMzOTt0IGFkZDwvZGl2PjxkaXY+cnVudGltZSBkZXBlbmRlbnQg
YXV0b21hdGljYWxseSBhdCBkb19wYWNrYWdlLjwvZGl2PjxkaXY+PGJyPjwvZGl2PjxkaXY+QW55
IGlkZWFzIHRvIHNvbHZlIHRoaXMgcHJvYmxlbT8gV2h5IGNhbiYjMzk7dCB5b2N0byBqdXN0IHVz
ZSBmaWxlIG5hbWUgd2hlbiBTT05BTUUgaXPCoDwvZGl2PjxkaXY+bWlzc2luZz88L2Rpdj48ZGl2
Pjxicj48L2Rpdj48ZGl2PlJlZ2FyZHMsPC9kaXY+PGRpdj5RaWFuZzwvZGl2PjwvZGl2Pg0KPC9i
bG9ja3F1b3RlPjwvZGl2Pjxicj48L2Rpdj4NCg==

--001a113f39801265ec050f5f8a2b--
