Return-Path: <davide.soldan@kynetics.it>
Received: from mail-wi0-f177.google.com (mail-wi0-f177.google.com
	[209.85.212.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BDF01E013D6
	for <yocto@yoctoproject.org>; Fri, 12 Jul 2013 06:02:34 -0700 (PDT)
Received: by mail-wi0-f177.google.com with SMTP id ey16so645241wid.16
	for <yocto@yoctoproject.org>; Fri, 12 Jul 2013 06:02:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=from:to:cc:subject:date:message-id:user-agent:in-reply-to
	:references:mime-version:content-type:content-transfer-encoding
	:x-gm-message-state;
	bh=jchtKM2uyghHUjXTvhD0XDOxJKUGLhJvfhX2qo7mgrc=;
	b=ID4OZmqJzTlw8mprVGO7mg5MKTjGZwJ+hKbfRSRzLKinTtEFxU7jbdsz7MCQk8hKW4
	RtQQBFKNq+ImDWfcYiVoG4rgVZEQsxWq6UVVukKGrqi1ZSHabLRNSX8h6mStLg9AsQ7Z
	mFNsbamA6z6/Y0nYBZmU1CzmoMKzEUgIXSv/IMXctjmS0xWLXOoqDDTqjs6J/81bWyOF
	FHBdciagtKcDPJZkHC4RRThvRrke23wNwDuOlDNjE32Dtoptfq93JwYhAGNNfHZntwsa
	5dsuTHTyDkOAqd5kNm8/98/5wHMYPg04hg3kWVD2zMV6EqDDX9FVjRKaXYM9HLjqh7Yi
	nyTg==
X-Received: by 10.180.208.7 with SMTP id ma7mr1663924wic.11.1373634153850;
	Fri, 12 Jul 2013 06:02:33 -0700 (PDT)
Received: from fedora-fisso.localnet
	(static-217-133-170-65.clienti.tiscali.it. [217.133.170.65])
	by mx.google.com with ESMTPSA id b14sm3291738wic.8.2013.07.12.06.02.32
	for <multiple recipients>
	(version=TLSv1 cipher=RC4-SHA bits=128/128);
	Fri, 12 Jul 2013 06:02:32 -0700 (PDT)
From: Davide Soldan <davide.soldan@kynetics.it>
To: Erik =?ISO-8859-1?Q?Bot=F6?= <erik.boto@pelagicore.com>
Date: Fri, 12 Jul 2013 15:02:27 +0200
Message-ID: <2012763.5YFYIADNbT@fedora-fisso>
User-Agent: KMail/4.10.4 (Linux/3.9.8-100.fc17.x86_64; KDE/4.10.4; x86_64; ; )
In-Reply-To: <CA+AhUGxQGeoTj=-1Be6rOeD0fENZuP3A4qG_vk6Hz+JwJiHdCQ@mail.gmail.com>
References: <2264563.SPIDgIzv0z@fedora-fisso>
	<CA+AhUGxQGeoTj=-1Be6rOeD0fENZuP3A4qG_vk6Hz+JwJiHdCQ@mail.gmail.com>
MIME-Version: 1.0
X-Gm-Message-State: ALoCoQn4PSrVsyAIksqlQGZ4IKKcvjOT+uEohFfIDJpiia4R6TjXXqo40yB1iGMWHNu9jpTFC1Mq
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: extend image.bbclass (or any bbclass file)
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
X-List-Received-Date: Fri, 12 Jul 2013 13:02:37 -0000
Content-Type: multipart/alternative; boundary="nextPart1893644.qUDMib2pC3"
Content-Transfer-Encoding: 7Bit

--nextPart1893644.qUDMib2pC3
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Really simple!!!
Excuse me for the dumb question and thanks a lot!
Cheers
Davide
In data venerd=EC 12 luglio 2013 13:22:32, Erik Bot=F6 ha scritto:


Hi,=20


On Fri, Jul 12, 2013 at 1:11 PM, Davide Soldan <davide.soldan@kynetics.=
it[1]> wrote:


Hi to all,I'm trying to move, from outside to inside my recipes, all th=
e changes I've done for my custom image.For example I changed the image=
.bbclass adding a function. But this file is outside of my recipes that=
 are stored under my git repository. So I'd like to move this function =
from image.bbclass to another bbclass file under mi recipes directory.I=
 tried to copy image.bbclass under my recipes directory, change its nam=
e, and references correctly, but duplicates functions gave me some erro=
rs:

ERROR: The function normal_groups defined in image.bbclass was already =
declared in image-custom.bbclass. BitBake has a global python function =
namespace so shared functions should be declared in a common include fi=
le rather than being duplicated, or if the functions are different, ple=
ase use different function names.ERROR: The function complementary_glob=
s defined in image.bbclass was already declared in image-custom.bbclass=
. BitBake has a global python function namespace so shared functions sh=
ould be declared in a common include file rather than being duplicated,=
 or if the functions are different, please use different function names=
.ERROR: The function get_devtable_list defined in image.bbclass was alr=
eady declared in image-custom.bbclass. BitBake has a global python func=
tion namespace so shared functions should be declared in a common inclu=
de file rather than being duplicated, or if the functions are different=
, please use different function names.

So I think there should be a way to append some code to image.bbclass a=
s I can do with recipes and bbappend files...right? How I can do that? =
Or maybe there's another and better way to do that?Thanks to all!




Can't your image-custom.bbclass inherit image.bbclass and then just add=
 the function you've added? Instead of replicating all stuff from image=
.bbclass in your class.


Cheers,=20
Erik


=20
_______________________________________________


yocto mailing list

yocto@yoctoproject.org[2]
https://lists.yoctoproject.org/listinfo/yocto[3]






--------
[1] mailto:davide.soldan@kynetics.it
[2] mailto:yocto@yoctoproject.org
[3] https://lists.yoctoproject.org/listinfo/yocto

--nextPart1893644.qUDMib2pC3
Content-Transfer-Encoding: base64
Content-Type: text/html; charset="iso-8859-1"

PCFET0NUWVBFIEhUTUwgUFVCTElDICItLy9XM0MvL0RURCBIVE1MIDQuMC8vRU4iICJodHRwOi8v
d3d3LnczLm9yZy9UUi9SRUMtaHRtbDQwL3N0cmljdC5kdGQiPgo8aHRtbD48aGVhZD48bWV0YSBu
YW1lPSJxcmljaHRleHQiIGNvbnRlbnQ9IjEiIC8+PHN0eWxlIHR5cGU9InRleHQvY3NzIj4KcCwg
bGkgeyB3aGl0ZS1zcGFjZTogcHJlLXdyYXA7IH0KPC9zdHlsZT48L2hlYWQ+PGJvZHkgc3R5bGU9
IiBmb250LWZhbWlseTonU2FucyBTZXJpZic7IGZvbnQtc2l6ZToxMHB0OyBmb250LXdlaWdodDo0
MDA7IGZvbnQtc3R5bGU6bm9ybWFsOyI+CjxwIHN0eWxlPSIgbWFyZ2luLXRvcDowcHg7IG1hcmdp
bi1ib3R0b206MHB4OyBtYXJnaW4tbGVmdDowcHg7IG1hcmdpbi1yaWdodDowcHg7IC1xdC1ibG9j
ay1pbmRlbnQ6MDsgdGV4dC1pbmRlbnQ6MHB4OyAtcXQtdXNlci1zdGF0ZTowOyI+UmVhbGx5IHNp
bXBsZSEhITwvcD4KPHAgc3R5bGU9IiBtYXJnaW4tdG9wOjBweDsgbWFyZ2luLWJvdHRvbTowcHg7
IG1hcmdpbi1sZWZ0OjBweDsgbWFyZ2luLXJpZ2h0OjBweDsgLXF0LWJsb2NrLWluZGVudDowOyB0
ZXh0LWluZGVudDowcHg7IC1xdC11c2VyLXN0YXRlOjA7Ij5FeGN1c2UgbWUgZm9yIHRoZSBkdW1i
IHF1ZXN0aW9uIGFuZCB0aGFua3MgYSBsb3QhPC9wPgo8cCBzdHlsZT0iIG1hcmdpbi10b3A6MHB4
OyBtYXJnaW4tYm90dG9tOjBweDsgbWFyZ2luLWxlZnQ6MHB4OyBtYXJnaW4tcmlnaHQ6MHB4OyAt
cXQtYmxvY2staW5kZW50OjA7IHRleHQtaW5kZW50OjBweDsgLXF0LXVzZXItc3RhdGU6MDsiPkNo
ZWVyczwvcD4KPHAgc3R5bGU9IiBtYXJnaW4tdG9wOjBweDsgbWFyZ2luLWJvdHRvbTowcHg7IG1h
cmdpbi1sZWZ0OjBweDsgbWFyZ2luLXJpZ2h0OjBweDsgLXF0LWJsb2NrLWluZGVudDowOyB0ZXh0
LWluZGVudDowcHg7IC1xdC11c2VyLXN0YXRlOjA7Ij5EYXZpZGU8L3A+CjxwIHN0eWxlPSIgbWFy
Z2luLXRvcDowcHg7IG1hcmdpbi1ib3R0b206MHB4OyBtYXJnaW4tbGVmdDowcHg7IG1hcmdpbi1y
aWdodDowcHg7IC1xdC1ibG9jay1pbmRlbnQ6MDsgdGV4dC1pbmRlbnQ6MHB4OyAtcXQtdXNlci1z
dGF0ZTowOyI+SW4gZGF0YSB2ZW5lcmTsIDEyIGx1Z2xpbyAyMDEzIDEzOjIyOjMyLCBFcmlrIEJv
dPYgaGEgc2NyaXR0bzo8YnIgLz48L3A+CjxwIHN0eWxlPSIgbWFyZ2luLXRvcDoxMnB4OyBtYXJn
aW4tYm90dG9tOjBweDsgbWFyZ2luLWxlZnQ6NDBweDsgbWFyZ2luLXJpZ2h0OjQwcHg7IC1xdC1i
bG9jay1pbmRlbnQ6MDsgdGV4dC1pbmRlbnQ6MHB4OyAtcXQtdXNlci1zdGF0ZTowOyI+SGksoDwv
cD4KPHAgc3R5bGU9IiBtYXJnaW4tdG9wOjBweDsgbWFyZ2luLWJvdHRvbTowcHg7IG1hcmdpbi1s
ZWZ0OjQwcHg7IG1hcmdpbi1yaWdodDo0MHB4OyAtcXQtYmxvY2staW5kZW50OjA7IHRleHQtaW5k
ZW50OjBweDsgLXF0LXVzZXItc3RhdGU6MDsiPjxiciAvPjwvcD4KPHAgc3R5bGU9IiBtYXJnaW4t
dG9wOjBweDsgbWFyZ2luLWJvdHRvbTowcHg7IG1hcmdpbi1sZWZ0OjQwcHg7IG1hcmdpbi1yaWdo
dDo0MHB4OyAtcXQtYmxvY2staW5kZW50OjA7IHRleHQtaW5kZW50OjBweDsgLXF0LXVzZXItc3Rh
dGU6MDsiPk9uIEZyaSwgSnVsIDEyLCAyMDEzIGF0IDE6MTEgUE0sIERhdmlkZSBTb2xkYW4gJmx0
OzxhIGhyZWY9Im1haWx0bzpkYXZpZGUuc29sZGFuQGt5bmV0aWNzLml0Ij48c3BhbiBzdHlsZT0i
IHRleHQtZGVjb3JhdGlvbjogdW5kZXJsaW5lOyBjb2xvcjojMDA1N2FlOyI+ZGF2aWRlLnNvbGRh
bkBreW5ldGljcy5pdDwvc3Bhbj48L2E+Jmd0OyB3cm90ZTo8YnIgLz48L3A+CjxwIHN0eWxlPSIg
bWFyZ2luLXRvcDowcHg7IG1hcmdpbi1ib3R0b206MHB4OyBtYXJnaW4tbGVmdDo0NnB4OyBtYXJn
aW4tcmlnaHQ6NDBweDsgLXF0LWJsb2NrLWluZGVudDowOyB0ZXh0LWluZGVudDowcHg7IC1xdC11
c2VyLXN0YXRlOjA7Ij5IaSB0byBhbGwsPGJyIC8+SSdtIHRyeWluZyB0byBtb3ZlLCBmcm9tIG91
dHNpZGUgdG8gaW5zaWRlIG15IHJlY2lwZXMsIGFsbCB0aGUgY2hhbmdlcyBJJ3ZlIGRvbmUgZm9y
IG15IGN1c3RvbSBpbWFnZS48YnIgLz5Gb3IgZXhhbXBsZSBJIGNoYW5nZWQgdGhlIGltYWdlLmJi
Y2xhc3MgYWRkaW5nIGEgZnVuY3Rpb24uIEJ1dCB0aGlzIGZpbGUgaXMgb3V0c2lkZSBvZiBteSBy
ZWNpcGVzIHRoYXQgYXJlIHN0b3JlZCB1bmRlciBteSBnaXQgcmVwb3NpdG9yeS4gU28gSSdkIGxp
a2UgdG8gbW92ZSB0aGlzIGZ1bmN0aW9uIGZyb20gaW1hZ2UuYmJjbGFzcyB0byBhbm90aGVyIGJi
Y2xhc3MgZmlsZSB1bmRlciBtaSByZWNpcGVzIGRpcmVjdG9yeS48YnIgLz5JIHRyaWVkIHRvIGNv
cHkgaW1hZ2UuYmJjbGFzcyB1bmRlciBteSByZWNpcGVzIGRpcmVjdG9yeSwgY2hhbmdlIGl0cyBu
YW1lLCBhbmQgcmVmZXJlbmNlcyBjb3JyZWN0bHksIGJ1dCBkdXBsaWNhdGVzIGZ1bmN0aW9ucyBn
YXZlIG1lIHNvbWUgZXJyb3JzOjxiciAvPjxiciAvPkVSUk9SOiBUaGUgZnVuY3Rpb24gbm9ybWFs
X2dyb3VwcyBkZWZpbmVkIGluIGltYWdlLmJiY2xhc3Mgd2FzIGFscmVhZHkgZGVjbGFyZWQgaW4g
aW1hZ2UtY3VzdG9tLmJiY2xhc3MuIEJpdEJha2UgaGFzIGEgZ2xvYmFsIHB5dGhvbiBmdW5jdGlv
biBuYW1lc3BhY2Ugc28gc2hhcmVkIGZ1bmN0aW9ucyBzaG91bGQgYmUgZGVjbGFyZWQgaW4gYSBj
b21tb24gaW5jbHVkZSBmaWxlIHJhdGhlciB0aGFuIGJlaW5nIGR1cGxpY2F0ZWQsIG9yIGlmIHRo
ZSBmdW5jdGlvbnMgYXJlIGRpZmZlcmVudCwgcGxlYXNlIHVzZSBkaWZmZXJlbnQgZnVuY3Rpb24g
bmFtZXMuPGJyIC8+RVJST1I6IFRoZSBmdW5jdGlvbiBjb21wbGVtZW50YXJ5X2dsb2JzIGRlZmlu
ZWQgaW4gaW1hZ2UuYmJjbGFzcyB3YXMgYWxyZWFkeSBkZWNsYXJlZCBpbiBpbWFnZS1jdXN0b20u
YmJjbGFzcy4gQml0QmFrZSBoYXMgYSBnbG9iYWwgcHl0aG9uIGZ1bmN0aW9uIG5hbWVzcGFjZSBz
byBzaGFyZWQgZnVuY3Rpb25zIHNob3VsZCBiZSBkZWNsYXJlZCBpbiBhIGNvbW1vbiBpbmNsdWRl
IGZpbGUgcmF0aGVyIHRoYW4gYmVpbmcgZHVwbGljYXRlZCwgb3IgaWYgdGhlIGZ1bmN0aW9ucyBh
cmUgZGlmZmVyZW50LCBwbGVhc2UgdXNlIGRpZmZlcmVudCBmdW5jdGlvbiBuYW1lcy48YnIgLz5F
UlJPUjogVGhlIGZ1bmN0aW9uIGdldF9kZXZ0YWJsZV9saXN0IGRlZmluZWQgaW4gaW1hZ2UuYmJj
bGFzcyB3YXMgYWxyZWFkeSBkZWNsYXJlZCBpbiBpbWFnZS1jdXN0b20uYmJjbGFzcy4gQml0QmFr
ZSBoYXMgYSBnbG9iYWwgcHl0aG9uIGZ1bmN0aW9uIG5hbWVzcGFjZSBzbyBzaGFyZWQgZnVuY3Rp
b25zIHNob3VsZCBiZSBkZWNsYXJlZCBpbiBhIGNvbW1vbiBpbmNsdWRlIGZpbGUgcmF0aGVyIHRo
YW4gYmVpbmcgZHVwbGljYXRlZCwgb3IgaWYgdGhlIGZ1bmN0aW9ucyBhcmUgZGlmZmVyZW50LCBw
bGVhc2UgdXNlIGRpZmZlcmVudCBmdW5jdGlvbiBuYW1lcy48YnIgLz48YnIgLz5TbyBJIHRoaW5r
IHRoZXJlIHNob3VsZCBiZSBhIHdheSB0byBhcHBlbmQgc29tZSBjb2RlIHRvIGltYWdlLmJiY2xh
c3MgYXMgSSBjYW4gZG8gd2l0aCByZWNpcGVzIGFuZCBiYmFwcGVuZCBmaWxlcy4uLnJpZ2h0PyBI
b3cgSSBjYW4gZG8gdGhhdD8gT3IgbWF5YmUgdGhlcmUncyBhbm90aGVyIGFuZCBiZXR0ZXIgd2F5
IHRvIGRvIHRoYXQ/PGJyIC8+VGhhbmtzIHRvIGFsbCE8YnIgLz48L3A+CjxwIHN0eWxlPSIgbWFy
Z2luLXRvcDowcHg7IG1hcmdpbi1ib3R0b206MHB4OyBtYXJnaW4tbGVmdDo0MHB4OyBtYXJnaW4t
cmlnaHQ6NDBweDsgLXF0LWJsb2NrLWluZGVudDowOyB0ZXh0LWluZGVudDowcHg7IC1xdC11c2Vy
LXN0YXRlOjA7Ij48YnIgLz48L3A+CjxwIHN0eWxlPSIgbWFyZ2luLXRvcDowcHg7IG1hcmdpbi1i
b3R0b206MHB4OyBtYXJnaW4tbGVmdDo0MHB4OyBtYXJnaW4tcmlnaHQ6NDBweDsgLXF0LWJsb2Nr
LWluZGVudDowOyB0ZXh0LWluZGVudDowcHg7IC1xdC11c2VyLXN0YXRlOjA7Ij5DYW4ndCB5b3Vy
IGltYWdlLWN1c3RvbS5iYmNsYXNzIGluaGVyaXQgaW1hZ2UuYmJjbGFzcyBhbmQgdGhlbiBqdXN0
IGFkZCB0aGUgZnVuY3Rpb24geW91J3ZlIGFkZGVkPyBJbnN0ZWFkIG9mIHJlcGxpY2F0aW5nIGFs
bCBzdHVmZiBmcm9tIGltYWdlLmJiY2xhc3MgaW4geW91ciBjbGFzcy48L3A+CjxwIHN0eWxlPSIg
bWFyZ2luLXRvcDowcHg7IG1hcmdpbi1ib3R0b206MHB4OyBtYXJnaW4tbGVmdDo0MHB4OyBtYXJn
aW4tcmlnaHQ6NDBweDsgLXF0LWJsb2NrLWluZGVudDowOyB0ZXh0LWluZGVudDowcHg7IC1xdC11
c2VyLXN0YXRlOjA7Ij48YnIgLz48L3A+CjxwIHN0eWxlPSIgbWFyZ2luLXRvcDowcHg7IG1hcmdp
bi1ib3R0b206MHB4OyBtYXJnaW4tbGVmdDo0MHB4OyBtYXJnaW4tcmlnaHQ6NDBweDsgLXF0LWJs
b2NrLWluZGVudDowOyB0ZXh0LWluZGVudDowcHg7IC1xdC11c2VyLXN0YXRlOjA7Ij5DaGVlcnMs
oDwvcD4KPHAgc3R5bGU9IiBtYXJnaW4tdG9wOjBweDsgbWFyZ2luLWJvdHRvbTowcHg7IG1hcmdp
bi1sZWZ0OjQwcHg7IG1hcmdpbi1yaWdodDo0MHB4OyAtcXQtYmxvY2staW5kZW50OjA7IHRleHQt
aW5kZW50OjBweDsgLXF0LXVzZXItc3RhdGU6MDsiPkVyaWs8L3A+CjxwIHN0eWxlPSIgbWFyZ2lu
LXRvcDowcHg7IG1hcmdpbi1ib3R0b206MHB4OyBtYXJnaW4tbGVmdDo0MHB4OyBtYXJnaW4tcmln
aHQ6NDBweDsgLXF0LWJsb2NrLWluZGVudDowOyB0ZXh0LWluZGVudDowcHg7IC1xdC11c2VyLXN0
YXRlOjA7Ij48YnIgLz48L3A+CjxwIHN0eWxlPSIgbWFyZ2luLXRvcDowcHg7IG1hcmdpbi1ib3R0
b206MHB4OyBtYXJnaW4tbGVmdDo0MHB4OyBtYXJnaW4tcmlnaHQ6NDBweDsgLXF0LWJsb2NrLWlu
ZGVudDowOyB0ZXh0LWluZGVudDowcHg7IC1xdC11c2VyLXN0YXRlOjA7Ij6gPC9wPgo8cCBzdHls
ZT0iIG1hcmdpbi10b3A6MHB4OyBtYXJnaW4tYm90dG9tOjBweDsgbWFyZ2luLWxlZnQ6NDZweDsg
bWFyZ2luLXJpZ2h0OjQwcHg7IC1xdC1ibG9jay1pbmRlbnQ6MDsgdGV4dC1pbmRlbnQ6MHB4OyAt
cXQtdXNlci1zdGF0ZTowOyI+X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX188YnIgLz48L3A+CjxwIHN0eWxlPSIgbWFyZ2luLXRvcDowcHg7IG1hcmdpbi1ib3R0
b206MHB4OyBtYXJnaW4tbGVmdDowcHg7IG1hcmdpbi1yaWdodDowcHg7IC1xdC1ibG9jay1pbmRl
bnQ6MDsgdGV4dC1pbmRlbnQ6MHB4OyAtcXQtdXNlci1zdGF0ZTowOyI+eW9jdG8gbWFpbGluZyBs
aXN0PGJyIC8+PGEgaHJlZj0ibWFpbHRvOnlvY3RvQHlvY3RvcHJvamVjdC5vcmciPjxzcGFuIHN0
eWxlPSIgdGV4dC1kZWNvcmF0aW9uOiB1bmRlcmxpbmU7IGNvbG9yOiMwMDU3YWU7Ij55b2N0b0B5
b2N0b3Byb2plY3Qub3JnPC9zcGFuPjwvYT48YnIgLz48YSBocmVmPSJodHRwczovL2xpc3RzLnlv
Y3RvcHJvamVjdC5vcmcvbGlzdGluZm8veW9jdG8iPjxzcGFuIHN0eWxlPSIgdGV4dC1kZWNvcmF0
aW9uOiB1bmRlcmxpbmU7IGNvbG9yOiMwMDU3YWU7Ij5odHRwczovL2xpc3RzLnlvY3RvcHJvamVj
dC5vcmcvbGlzdGluZm8veW9jdG88L3NwYW4+PC9hPjxiciAvPjwvcD4KPHAgc3R5bGU9IiBtYXJn
aW4tdG9wOjBweDsgbWFyZ2luLWJvdHRvbTowcHg7IG1hcmdpbi1sZWZ0OjBweDsgbWFyZ2luLXJp
Z2h0OjBweDsgLXF0LWJsb2NrLWluZGVudDowOyB0ZXh0LWluZGVudDowcHg7IC1xdC11c2VyLXN0
YXRlOjA7Ij48YnIgLz48YnIgLz48L3A+CjxwIHN0eWxlPSIgbWFyZ2luLXRvcDowcHg7IG1hcmdp
bi1ib3R0b206MHB4OyBtYXJnaW4tbGVmdDowcHg7IG1hcmdpbi1yaWdodDowcHg7IC1xdC1ibG9j
ay1pbmRlbnQ6MDsgdGV4dC1pbmRlbnQ6MHB4OyAtcXQtdXNlci1zdGF0ZTowOyI+PGJyIC8+PGJy
IC8+PC9wPjwvYm9keT48L2h0bWw+

--nextPart1893644.qUDMib2pC3--
