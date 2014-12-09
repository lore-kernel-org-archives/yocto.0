Return-Path: <jimr@spectralogic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 90AF1E0086F; Tue,  9 Dec 2014 08:06:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.spectralogic.com (mail5.spectralogic.com [192.30.190.19])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1C24E0082F
	for <yocto@yoctoproject.org>; Tue,  9 Dec 2014 08:06:51 -0800 (PST)
From: Jim Rafert <jimr@spectralogic.com>
To: "Yu, Chan KitX" <chan.kitx.yu@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: Building clang with Yocto
Thread-Index: AQHQEw7mRsY0MXmXQESP6lU4D7T5NZyGdePQgAD0xds=
Date: Tue, 9 Dec 2014 16:06:50 +0000
Message-ID: <86196249137E0843B2E0673D4F731E0C0108E29128@reactor.sldomain.com>
References: <86196249137E0843B2E0673D4F731E0C0108E2902F@reactor.sldomain.com>,
	<0E4D391FE2BDEC45AA0B4E32D6BD598A2500FD@PGSMSX101.gar.corp.intel.com>
In-Reply-To: <0E4D391FE2BDEC45AA0B4E32D6BD598A2500FD@PGSMSX101.gar.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.200.8]
MIME-Version: 1.0
Subject: Re: Building clang with Yocto
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
X-List-Received-Date: Tue, 09 Dec 2014 16:06:55 -0000
X-Groupsio-MsgNum: 22544
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_002_86196249137E0843B2E0673D4F731E0C0108E29128reactorsldoma_"

--_002_86196249137E0843B2E0673D4F731E0C0108E29128reactorsldoma_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I have attached the script.  Basically, all that it does is extract the tar=
ball from the install script, untar it into a temp directory, install the r=
pm created by the llvm build, then tar the temp directory back onto the tai=
l of the script.=0A=
The script lives in a subdirectory of the main poky directory, and assumes =
that that is your current working directory when you execute it.  Of course=
, it will need modification on your part because it assumes filenames based=
 upon my own llvm recipes.=0A=
=0A=
I would appreciate if you figure out how to get them installed correctly fr=
om entirely within the Yocto framework, you will share the information.=0A=
=0A=
-Jim-=0A=
=0A=
=0A=
________________________________________=0A=
From: Yu, Chan KitX [chan.kitx.yu@intel.com]=0A=
Sent: Monday, December 08, 2014 6:19 PM=0A=
To: Jim Rafert; yocto@yoctoproject.org=0A=
Subject: RE: Building clang with Yocto=0A=
=0A=
Hi Jim,=0A=
=0A=
How did you jam the clang compiler into the SDK tarball?=0A=
=0A=
Chan Kit=0A=
=0A=
-----Original Message-----=0A=
From: Jim Rafert [mailto:jimr@spectralogic.com]=0A=
Sent: Tuesday, December 09, 2014 1:48 AM=0A=
To: yocto@yoctoproject.org; Yu, Chan KitX=0A=
Subject: Building clang with Yocto=0A=
=0A=
Hello Chan,=0A=
=0A=
I have been working to a similar goal, to include clang in the toolchain to=
 be used for compiling applications to run on the target.  Using clang to c=
ompile the OS and kernel are not required or  desired by me.=0A=
=0A=
You may get some insight from the thread I started in November on the subje=
ct.  I'm not sure that this contains all of the posts on the subject. You m=
ay want to search the archive for November.=0A=
=0A=
I have not been successful yet in getting clang actually packaged in the to=
olchain, in the Yocto build,  but at least it builds.  I have a postbuild s=
cript that takes the built clang compiler from the work directory and jams =
it into the SDK tarball that is embedded in the sdk install script.=0A=
=0A=
-Jim-=0A=
=0A=
=0A=
________________________________________=0A=
From: yocto-bounces@yoctoproject.org [yocto-bounces@yoctoproject.org] on be=
half of yocto-request@yoctoproject.org [yocto-request@yoctoproject.org]=0A=
Sent: Monday, December 08, 2014 2:56 AM=0A=
To: yocto@yoctoproject.org=0A=
Subject: yocto Digest, Vol 51, Issue 26=0A=
=0A=
Send yocto mailing list submissions to=0A=
        yocto@yoctoproject.org=0A=
=0A=
To subscribe or unsubscribe via the World Wide Web, visit=0A=
        https://lists.yoctoproject.org/listinfo/yocto=0A=
or, via email, send a message with subject or body 'help' to=0A=
        yocto-request@yoctoproject.org=0A=
=0A=
You can reach the person managing the list at=0A=
        yocto-owner@yoctoproject.org=0A=
=0A=
When replying, please edit your Subject line so it is more specific than "R=
e: Contents of yocto digest..."=0A=

--_002_86196249137E0843B2E0673D4F731E0C0108E29128reactorsldoma_
Content-Type: application/x-shellscript; name="MakeSDK.sh"
Content-Description: MakeSDK.sh
Content-Disposition: attachment; filename="MakeSDK.sh"; size=1946;
	creation-date="Tue, 09 Dec 2014 16:02:12 GMT";
	modification-date="Tue, 09 Dec 2014 16:02:12 GMT"
Content-Transfer-Encoding: base64

IyEvYmluL2Jhc2gKI3VudGFyIHRoZSBTREsgaW50byBhIHRtcCBkaXJlY3RvcnkKU0RLX0ZJTEU9
Li4vYnVpbGQvdG1wL2RlcGxveS9zZGsvcG9reS1lZ2xpYmMteDg2XzY0LWNvcmUtaW1hZ2UtZnVs
bC1jbWRsaW5lLWk1ODYtdG9vbGNoYWluLTEuNi5zaApta2RpciAtcCBzZGtfZGlyCnN1ZG8gcm0g
LXJmIHNka19kaXIvKgpwYXlsb2FkX29mZnNldD0kKCgkKGdyZXAgLW5hIC1tMSAiXk1BUktFUjok
IiAkU0RLX0ZJTEV8Y3V0IC1kJzonIC1mMSkgKyAxKSkKcHJlYW1ibGVfc2l6ZT0kKCgkcGF5bG9h
ZF9vZmZzZXQgLSAxKSkKZWNobyBwcmVhbWJsZSBzaXplIGlzICRwcmVhbWJsZV9zaXplCnRhaWwg
LW4gKyRwYXlsb2FkX29mZnNldCAkU0RLX0ZJTEUgfCBzdWRvIHRhciB4aiAtQyBzZGtfZGlyCgoj
QnVpbGQgdGhlIExMVk0vY2xhbmcgc3R1ZmYKcHVzaGQgLi4KLiAuL29lLWluaXQtYnVpbGQtZW52
CmJpdGJha2UgbGx2bQpwb3BkCiNJbnN0YWxsIExMVk0vY2xhbmcgZnJvbSB0aGUgcnBtIGNyZWF0
ZWQgaW4gdGhlIGJ1aWxkIApycG1fZGlyX3JlYWxwYXRoPWByZWFscGF0aCBzZGtfZGlyL3N5c3Jv
b3RzL3g4Nl82NC1wb2t5c2RrLWxpbnV4L3VzcmAKc3VkbyBycG0gLWkgIC0tcmVsb2NhdGUgL3Vz
cj0kcnBtX2Rpcl9yZWFscGF0aCAtLWZvcmNlIC0tbm9kZXBzIC0tYmFkcmVsb2MgLS1pZ25vcmVh
cmNoIC4uL2J1aWxkL3RtcC9kZXBsb3kvcnBtL3g4Nl82NF9uYXRpdmVzZGsvbmF0aXZlc2RrLWxs
dm0tMy41LjAtcjAueDg2XzY0X25hdGl2ZXNkay5ycG0KI2FkZCBzY2FuLWJ1aWxkIGFuZCB2aWV3
LWJ1aWxkCnRvb2xzX2Zyb209Li4vYnVpbGQvdG1wL3dvcmsveDg2XzY0LW5hdGl2ZXNkay1wb2t5
c2RrLWxpbnV4L25hdGl2ZXNkay1sbHZtLzMuNS4wLXIwL2xsdm0tMy41LjAvdG9vbHMvY2xhbmcv
dG9vbHMKc3VkbyBjcCAkdG9vbHNfZnJvbS9zY2FuLWJ1aWxkLyogJHJwbV9kaXIvYmluCnN1ZG8g
Y3AgLWEgJHRvb2xzX2Zyb20vc2Nhbi12aWV3LyogJHJwbV9kaXIvYmluCnN1ZG8gcm0gLWYgJHJw
bV9kaXIvYmluL3NjYW4tYnVpbGQuMQojdXBkYXRlIHRoZSB0ZW1wbGF0ZSBlbnZpcm9ubWVudC1z
ZXR1cCBmaWxlIHdpdGggY21ha2UgYW5kIGNsYW5nIHN0dWZmCm1lPSRVU0VSCnN1ZG8gY2hvd24g
JG1lIHNka19kaXIvZW52aXJvbm1lbnQtc2V0dXAtaTU4Ni1wb2t5LWxpbnV4CmNhdCA+PnNka19k
aXIvZW52aXJvbm1lbnQtc2V0dXAtaTU4Ni1wb2t5LWxpbnV4IDw8RU9ECmV4cG9ydCBLRElSPS9v
cHQvcG9reS8xLjYvc3lzcm9vdHMvaTU4Ni1wb2t5LWxpbnV4L3Vzci9zcmMva2VybmVsCmV4cG9y
dCBDTUFLRV9UT09MQ0hBSU5fRklMRT0vb3B0L3Bva3kvMS42L3Rvb2xjaGFpbi5jbWFrZQpleHBv
cnQgQ01UQz1cJENNQUtFX1RPT0xDSEFJTl9GSUxFCmFsaWFzIGNtYWtlPSdjbWFrZSAtRENNQUtF
X1RPT0xDSEFJTl9GSUxFPVwkQ01BS0VfVE9PTENIQUlOX0ZJTEUnCmV4cG9ydCBQWVRIT05QQVRI
PS9vcHQvcG9reS8xLjYvc3lzcm9vdHMveDg2XzY0LXBva3lzZGstbGludXgvdXNyL2xpYi9weXRo
b24yLjcKZXhwb3J0IFBZVEhPTl9FWEVDVVRBQkxFPS9vcHQvcG9reS8xLjYvc3lzcm9vdHMveDg2
XzY0LXBva3lzZGstbGludXgvdXNyL2Jpbi9weXRob24KRU9ECnN1ZG8gY2hvd24gcm9vdCBzZGtf
ZGlyL2Vudmlyb25tZW50LXNldHVwLWk1ODYtcG9reS1saW51eAojIEFkZCBvdXIgdG9vbGNoYWlu
LmNtYWtlIGZpbGUKc3VkbyBjcCB0b29sY2hhaW4uY21ha2Ugc2RrX2RpcgojUmUtYXNzZW1ibGUg
dGhlIFNESyBpbnN0YWxsIHNjcmlwdCBhbmQgdGFyLgpoZWFkIC0kcHJlYW1ibGVfc2l6ZSAkU0RL
X0ZJTEUgPmltYWdlcy9TcGVjdHJhT1NfaW5zdGFsbF90b29sY2hhaW4uc2gKcHVzaGQgc2RrX2Rp
cgpzdWRvIHRhciBjaiAqID4+Li4vaW1hZ2VzL1NwZWN0cmFPU19pbnN0YWxsX3Rvb2xjaGFpbi5z
aApwb3BkCgo=

--_002_86196249137E0843B2E0673D4F731E0C0108E29128reactorsldoma_--
