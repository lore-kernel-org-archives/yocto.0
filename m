Return-Path: <Oliver.Novakovic@alpine.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E5C77E00888; Mon,  6 Oct 2014 01:47:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,X_IP
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: *  0.0 X_IP Message has X-IP header
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from ipmx01.kddinet.de (ipmx01.kddinet.de [195.82.33.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76ED9E0084F
	for <yocto@yoctoproject.org>; Mon,  6 Oct 2014 01:47:19 -0700 (PDT)
X-SBRS: None
X-Policy: $RELAYED_Alpine
X-Group: Alpine_RLY
X-IP: 195.82.37.30
X-MID: 17119711
X-IronPort-AV: E=Sophos;i="5.04,662,1406584800"; d="scan'208,217";a="17119711"
Received: from unknown (HELO demnln02.corp.alpine.eu) ([195.82.37.30])
	by ipmx01.kddinet.de with ESMTP; 06 Oct 2014 10:47:17 +0200
From: Oliver Novakovic <Oliver.Novakovic@alpine.de>
To: bevenson@melinkcorp.com, martin.jansa@gmail.com, opensource@keylevel.com
X-Mailer: IBM Lotus Domino Access for MS Outlook (Unknown) Release 8.0.2
	August 07, 2008
Message-ID: <OFF2DF31DD.F0BF3405-ONC1257D69.003045B8@alpine.de>
X-Priority: 3 (Normal)
Importance: Normal
Date: Mon, 6 Oct 2014 10:47:14 +0200
X-MIMETrack: Itemize by Notes Client on Oliver
	Novakovic/AOGE-ST/AOEU/SPEED(Release
	8.0.2|August 07, 2008) at 06.10.2014 10:47:22,
	Serialize by Router on AOGMLN003/SRV/AOEU/SPEED(Release 8.5.3FP6
	HF646|June 13, 2014) at 06.10.2014 10:47:16,
	Serialize complete at 06.10.2014 10:47:16
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Recommended Hardware for building
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
X-List-Received-Date: Mon, 06 Oct 2014 08:47:28 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 00304875C1257D69_="

--=_alternative 00304875C1257D69_=
Content-Type: text/plain; charset="utf-8"

Thanks a lot for all of the information so far. This will give me a good
starting point on configuring a build server or PC.

 

Basically, the image itself is very basic, but it does include the
complete QT5 release including QTWebkit which seems to be the most
demanding to build.

The rest are smaller support packages for connectivity and a QML based
HMI.

 

Thanks again,

Oliver

 

From: Bryan Evenson <bevenson@melinkcorp.com> [mailto:Bryan Evenson
<bevenson@melinkcorp.com>] 
Sent: Freitag, 3. Oktober 2014 14:48
To: Martin Jansa <martin.jansa@gmail.com>; Chris Tapp
<opensource@keylevel.com>; "Oliver.Novakovic@alpine.de"
<Oliver.Novakovic@alpine.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: RE: [yocto] Recommended Hardware for building

 


Oliver, 

> -----Original Message----- 
> From: yocto-bounces@yoctoproject.org [mailto:yocto- 
> bounces@yoctoproject.org] On Behalf Of Martin Jansa 
> Sent: Thursday, October 02, 2014 3:09 PM 
> To: Chris Tapp 
> Cc: yocto@yoctoproject.org 
> Subject: Re: [yocto] Recommended Hardware for building 
> 
> On Thu, Oct 02, 2014 at 05:51:29PM +0100, Chris Tapp wrote: 
> > 
> > On 2 Oct 2014, at 11:04, Burton, Ross wrote: 
> > 
> > > On 2 October 2014 10:36, Oliver Novakovic 
> wrote: 
> > >> Can anyone recommend a reasonable performant hardware setup to 
> use ? 
> > >> 
> > >> What should be considered ? Are there any pitfalls ? What about 
> > >> bottlenecks in the build system ? 
> 
> you should start by saying what you're going to build, my experience
is quite 
> different when building "small" images like console-image or even
x11-image 
> and "big" images/feeds which contain whole qt5 stack, 3 webkits and 
> 2 chromium builds. 

Agreed, what you are building and what your goals are makes a difference
in what you need. I have a build machine setup that is mainly used to
verify everything builds correctly after committing changes. It's an
Intel i3-3220 with 8GB RAM. The autobuilder is setup on a Linux VM which
is given 4GB RAM and does not recognize the extra Hyper-threaded cores,
meaning it acts as a dual core machine. Rebuild of my console image
typically takes under 20 minutes, and most of that time is
packaging/install. After the initial build, there really isn't much for
my system that needs to get rebuilt between commits. 

So if you are looking for a build machine that is outside your normal
workflow, a $400 PC may be enough for you. If this machine is for your
development build and you have a have a lot of graphic applications that
you need to build, you may want something more in line with what other
people are suggesting. 

Regards, 
Bryan 

> 
> In general: bitbake will better utilize all available performance with
bigger 
> image (e.g. build time for console image won't change so much if you
go from 
> 8 cores to 24, but building e.g. just webkit alone will be more than
twice 
> faster on 24 cores). 
> 
> Regards, 
> 
> > >> Specifically: 
> > >> 
> > >> How many cores are recommended ? And how much cache is necessary 
> ? 
> > >> How much of the main memory does Yocto really use ? Is 32 GB 
> > >> sufficient or should I go for 64 ? 
> > >> 
> > >> Does it make sense to use two SSDs as Raid0 to get builds faster
? 
> > > 
> > > As much of everything as you can afford. :) The build isn't heavy 
> > > in any particular metric, so don't sacrifice RAM for SSDs for
example. 
> > > 
> > > RAID 0 over SSD would be nice and fast, but I prefer having a good
> > > amount of RAM and a tuned ext4 (no journal, long commit delay) so 
> > > data doesn't actually hit the disk as frequently. Keeping the
actual 
> > > build directories on a separate disk is good for performance and
not 
> > > causing data loss when you lose a disk. 
> > > 
> > > There are people that have 64GB in machines and then set TMPDIR to
a 
> > > tmpfs. Surprisingly this isn't that much faster (5% or so), but 
> > > it's a lot easier on the hardware and power consumption. 
> > 
> > My experience: 
> > 
> > I've got a quad core with hyper-threading (so 8 usable cores)
running at 
> about 3.8 GHz, 16GB of RAM and use multiple SSDs - one to hold the
meta 
> data, downloads and top level build areas (local.conf, etc) and have
the 
> TMPDIR on a second SSD (so, as Ross says, I don't get a surprise when
it 
> wears out!). 
> > 
> > I can build my images (basically an x11 image) in just under 60
minutes 
> (once all the files have been fetched). I run with BB_NUMBER_THREADS
and 
> PARALLEL_MAKE both set to 16 to make sure the cores are fully loaded
as 
> much as possible (other says that should be 8 and 8 to reduce
scheduling 
> overhead). 
> > 
> > During the build the system is CPU bound quite a bit of the time (so
more 
> cores should help), but there are significant periods where the build 
> dependency chain means this isn't the case and only two or three cores
are 
> active. Previously I recall comparing results with someone else and
finding 
> that having lots more cores (24, I think) didn't give a significant
improvement 
> in build time (certainly not for the 3x system build cost). 
> > 
> > I've never seen peak memory usage go much above 9 GB during a build,
> and the peaks generally coincide with linking activities for "big"
items (gcc, 
> eglibc). This is likely to go higher with more active threads. 
> > 
> > I started out with a RAID-0 SSD build array, but I didn't really see
any 
> difference over a single high-spec (consumer) SSD. As Ross said,
running a 
> fast file system on the disk is a good idea. 
> > 
> > -- 
> > 
> > Chris Tapp 
> > opensource@keylevel.com 
> > www.keylevel.com 
> > 
> > ---- 
> > You can tell you're getting older when your car insurance gets real
cheap! 
> > 
> > -- 
> > _______________________________________________ 
> > yocto mailing list 
> > yocto@yoctoproject.org 
> > https://lists.yoctoproject.org/listinfo/yocto 
> 
> -- 
> Martin 'JaMa' Jansa jabber: Martin.Jansa@gmail.com 


Alpine Electronics R&D Europe GmbH, Vor dem Lauch 14, 70567 Stuttgart,
Registergericht Stuttgart, HRB 25265
Geschaeftsfuehrer: Toshinori Kobayashi, Shuji Taguchi
Working office: Vor dem Lauch 14, 70567 Stuttgart

ATTENTION: This e-mail and any files transmitted with it may be privileged
and/or confidential, and are intended solely for the use of the individual
or entity to whom this  e-mail is addressed. If you are not one of the
named recipients or otherwise  have reason to believe that you have
received this e-mail in error, please notify  the sender and delete this
message immediately from your computer. We thank you for your cooperation.

--=_alternative 00304875C1257D69_=
Content-Type: text/html; charset="utf-8"
content-transfer-encoding: base64

PGh0bWwgeG1sbnM6dj0idXJuOnNjaGVtYXMtbWljcm9zb2Z0LWNvbTp2bWwiIHhtbG5zOm89InVy
bjpzY2hlbWFzLW1pY3Jvc29mdC1jb206b2ZmaWNlOm9mZmljZSIgeG1sbnM6dz0idXJuOnNjaGVt
YXMtbWljcm9zb2Z0LWNvbTpvZmZpY2U6d29yZCIgeG1sbnM6bT0iaHR0cDovL3NjaGVtYXMubWlj
cm9zb2Z0LmNvbS9vZmZpY2UvMjAwNC8xMi9vbW1sIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcv
VFIvUkVDLWh0bWw0MCI+PGhlYWQ+PG1ldGEgaHR0cC1lcXVpdj1Db250ZW50LVR5cGUgY29udGVu
dD0idGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij48bWV0YSBuYW1lPUdlbmVyYXRvciBjb250ZW50
PSJNaWNyb3NvZnQgV29yZCAxNCAoZmlsdGVyZWQgbWVkaXVtKSI+PHN0eWxlPjwhLS0NCi8qIEZv
bnQgRGVmaW5pdGlvbnMgKi8NCkBmb250LWZhY2UNCgl7Zm9udC1mYW1pbHk6Q2FsaWJyaTsNCglw
YW5vc2UtMToyIDE1IDUgMiAyIDIgNCAzIDIgNDt9DQpAZm9udC1mYWNlDQoJe2ZvbnQtZmFtaWx5
OlRhaG9tYTsNCglwYW5vc2UtMToyIDExIDYgNCAzIDUgNCA0IDIgNDt9DQovKiBTdHlsZSBEZWZp
bml0aW9ucyAqLw0KcC5Nc29Ob3JtYWwsIGxpLk1zb05vcm1hbCwgZGl2Lk1zb05vcm1hbA0KCXtt
YXJnaW46MGNtOw0KCW1hcmdpbi1ib3R0b206LjAwMDFwdDsNCglmb250LXNpemU6MTIuMHB0Ow0K
CWZvbnQtZmFtaWx5OiJUaW1lcyBOZXcgUm9tYW4iLCJzZXJpZiI7fQ0KYTpsaW5rLCBzcGFuLk1z
b0h5cGVybGluaw0KCXttc28tc3R5bGUtcHJpb3JpdHk6OTk7DQoJY29sb3I6Ymx1ZTsNCgl0ZXh0
LWRlY29yYXRpb246dW5kZXJsaW5lO30NCmE6dmlzaXRlZCwgc3Bhbi5Nc29IeXBlcmxpbmtGb2xs
b3dlZA0KCXttc28tc3R5bGUtcHJpb3JpdHk6OTk7DQoJY29sb3I6cHVycGxlOw0KCXRleHQtZGVj
b3JhdGlvbjp1bmRlcmxpbmU7fQ0Kc3Bhbi5FbWFpbFN0eWxlMTcNCgl7bXNvLXN0eWxlLXR5cGU6
cGVyc29uYWwtcmVwbHk7DQoJZm9udC1mYW1pbHk6IkNhbGlicmkiLCJzYW5zLXNlcmlmIjsNCglj
b2xvcjojMUY0OTdEO30NCi5Nc29DaHBEZWZhdWx0DQoJe21zby1zdHlsZS10eXBlOmV4cG9ydC1v
bmx5Ow0KCWZvbnQtZmFtaWx5OiJDYWxpYnJpIiwic2Fucy1zZXJpZiI7DQoJbXNvLWZhcmVhc3Qt
bGFuZ3VhZ2U6RU4tVVM7fQ0KQHBhZ2UgV29yZFNlY3Rpb24xDQoJe3NpemU6NjEyLjBwdCA3OTIu
MHB0Ow0KCW1hcmdpbjo3MC44NXB0IDcwLjg1cHQgMi4wY20gNzAuODVwdDt9DQpkaXYuV29yZFNl
Y3Rpb24xDQoJe3BhZ2U6V29yZFNlY3Rpb24xO30NCi0tPjwvc3R5bGU+PCEtLVtpZiBndGUgbXNv
IDldPjx4bWw+DQo8bzpzaGFwZWRlZmF1bHRzIHY6ZXh0PSJlZGl0IiBzcGlkbWF4PSIxMDI2IiAv
Pg0KPC94bWw+PCFbZW5kaWZdLS0+PCEtLVtpZiBndGUgbXNvIDldPjx4bWw+DQo8bzpzaGFwZWxh
eW91dCB2OmV4dD0iZWRpdCI+DQo8bzppZG1hcCB2OmV4dD0iZWRpdCIgZGF0YT0iMSIgLz4NCjwv
bzpzaGFwZWxheW91dD48L3htbD48IVtlbmRpZl0tLT48L2hlYWQ+PGJvZHkgbGFuZz1ERSBsaW5r
PWJsdWUgdmxpbms9cHVycGxlPjxkaXYgY2xhc3M9V29yZFNlY3Rpb24xPjxwIGNsYXNzPU1zb05v
cm1hbD48c3BhbiBsYW5nPUVOLVVTIHN0eWxlPSdmb250LXNpemU6MTEuMHB0O2ZvbnQtZmFtaWx5
OiJDYWxpYnJpIiwic2Fucy1zZXJpZiI7Y29sb3I6IzFGNDk3RCc+VGhhbmtzIGEgbG90IGZvciBh
bGwgb2YgdGhlIGluZm9ybWF0aW9uIHNvIGZhci4gVGhpcyB3aWxsIGdpdmUgbWUgYSBnb29kIHN0
YXJ0aW5nIHBvaW50IG9uIGNvbmZpZ3VyaW5nIGEgYnVpbGQgc2VydmVyIG9yIFBDLjxvOnA+PC9v
OnA+PC9zcGFuPjwvcD48cCBjbGFzcz1Nc29Ob3JtYWw+PHNwYW4gbGFuZz1FTi1VUyBzdHlsZT0n
Zm9udC1zaXplOjExLjBwdDtmb250LWZhbWlseToiQ2FsaWJyaSIsInNhbnMtc2VyaWYiO2NvbG9y
OiMxRjQ5N0QnPjxvOnA+Jm5ic3A7PC9vOnA+PC9zcGFuPjwvcD48cCBjbGFzcz1Nc29Ob3JtYWw+
PHNwYW4gbGFuZz1FTi1VUyBzdHlsZT0nZm9udC1zaXplOjExLjBwdDtmb250LWZhbWlseToiQ2Fs
aWJyaSIsInNhbnMtc2VyaWYiO2NvbG9yOiMxRjQ5N0QnPkJhc2ljYWxseSwgdGhlIGltYWdlIGl0
c2VsZiBpcyB2ZXJ5IGJhc2ljLCBidXQgaXQgZG9lcyBpbmNsdWRlIHRoZSBjb21wbGV0ZSBRVDUg
cmVsZWFzZSBpbmNsdWRpbmcgUVRXZWJraXQgd2hpY2ggc2VlbXMgdG8gYmUgdGhlIG1vc3QgZGVt
YW5kaW5nIHRvIGJ1aWxkLjxvOnA+PC9vOnA+PC9zcGFuPjwvcD48cCBjbGFzcz1Nc29Ob3JtYWw+
PHNwYW4gbGFuZz1FTi1VUyBzdHlsZT0nZm9udC1zaXplOjExLjBwdDtmb250LWZhbWlseToiQ2Fs
aWJyaSIsInNhbnMtc2VyaWYiO2NvbG9yOiMxRjQ5N0QnPlRoZSByZXN0IGFyZSBzbWFsbGVyIHN1
cHBvcnQgcGFja2FnZXMgZm9yIGNvbm5lY3Rpdml0eSBhbmQgYSBRTUwgYmFzZWQgSE1JLjxvOnA+
PC9vOnA+PC9zcGFuPjwvcD48cCBjbGFzcz1Nc29Ob3JtYWw+PHNwYW4gbGFuZz1FTi1VUyBzdHls
ZT0nZm9udC1zaXplOjExLjBwdDtmb250LWZhbWlseToiQ2FsaWJyaSIsInNhbnMtc2VyaWYiO2Nv
bG9yOiMxRjQ5N0QnPjxvOnA+Jm5ic3A7PC9vOnA+PC9zcGFuPjwvcD48cCBjbGFzcz1Nc29Ob3Jt
YWw+PHNwYW4gbGFuZz1FTi1VUyBzdHlsZT0nZm9udC1zaXplOjExLjBwdDtmb250LWZhbWlseToi
Q2FsaWJyaSIsInNhbnMtc2VyaWYiO2NvbG9yOiMxRjQ5N0QnPlRoYW5rcyBhZ2Fpbiw8bzpwPjwv
bzpwPjwvc3Bhbj48L3A+PHAgY2xhc3M9TXNvTm9ybWFsPjxzcGFuIGxhbmc9RU4tVVMgc3R5bGU9
J2ZvbnQtc2l6ZToxMS4wcHQ7Zm9udC1mYW1pbHk6IkNhbGlicmkiLCJzYW5zLXNlcmlmIjtjb2xv
cjojMUY0OTdEJz5PbGl2ZXI8bzpwPjwvbzpwPjwvc3Bhbj48L3A+PHAgY2xhc3M9TXNvTm9ybWFs
PjxzcGFuIGxhbmc9RU4tVVMgc3R5bGU9J2ZvbnQtc2l6ZToxMS4wcHQ7Zm9udC1mYW1pbHk6IkNh
bGlicmkiLCJzYW5zLXNlcmlmIjtjb2xvcjojMUY0OTdEJz48bzpwPiZuYnNwOzwvbzpwPjwvc3Bh
bj48L3A+PHAgY2xhc3M9TXNvTm9ybWFsPjxiPjxzcGFuIGxhbmc9RU4tVVMgc3R5bGU9J2ZvbnQt
c2l6ZToxMC4wcHQ7Zm9udC1mYW1pbHk6IlRhaG9tYSIsInNhbnMtc2VyaWYiJz5Gcm9tOjwvc3Bh
bj48L2I+PHNwYW4gbGFuZz1FTi1VUyBzdHlsZT0nZm9udC1zaXplOjEwLjBwdDtmb250LWZhbWls
eToiVGFob21hIiwic2Fucy1zZXJpZiInPiBCcnlhbiBFdmVuc29uICZsdDtiZXZlbnNvbkBtZWxp
bmtjb3JwLmNvbSZndDsgW21haWx0bzpCcnlhbiBFdmVuc29uICZsdDtiZXZlbnNvbkBtZWxpbmtj
b3JwLmNvbSZndDtdIDxicj48Yj5TZW50OjwvYj4gRnJlaXRhZywgMy4gT2t0b2JlciAyMDE0IDE0
OjQ4PGJyPjxiPlRvOjwvYj4gTWFydGluIEphbnNhICZsdDttYXJ0aW4uamFuc2FAZ21haWwuY29t
Jmd0OzsgQ2hyaXMgVGFwcCAmbHQ7b3BlbnNvdXJjZUBrZXlsZXZlbC5jb20mZ3Q7OyAmcXVvdDtP
bGl2ZXIuTm92YWtvdmljQGFscGluZS5kZSZxdW90OyAmbHQ7T2xpdmVyLk5vdmFrb3ZpY0BhbHBp
bmUuZGUmZ3Q7PGJyPjxiPkNjOjwvYj4gJnF1b3Q7eW9jdG9AeW9jdG9wcm9qZWN0Lm9yZyZxdW90
OyAmbHQ7eW9jdG9AeW9jdG9wcm9qZWN0Lm9yZyZndDs8YnI+PGI+U3ViamVjdDo8L2I+IFJFOiBb
eW9jdG9dIFJlY29tbWVuZGVkIEhhcmR3YXJlIGZvciBidWlsZGluZzxvOnA+PC9vOnA+PC9zcGFu
PjwvcD48cCBjbGFzcz1Nc29Ob3JtYWw+PG86cD4mbmJzcDs8L286cD48L3A+PHAgY2xhc3M9TXNv
Tm9ybWFsPjxicj5PbGl2ZXIsIDxicj48YnI+Jmd0OyAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0t
LSA8YnI+Jmd0OyBGcm9tOiA8YSBocmVmPSJtYWlsdG86eW9jdG8tYm91bmNlc0B5b2N0b3Byb2pl
Y3Qub3JnIj55b2N0by1ib3VuY2VzQHlvY3RvcHJvamVjdC5vcmc8L2E+IFttYWlsdG86eW9jdG8t
IDxicj4mZ3Q7IDxhIGhyZWY9Im1haWx0bzpib3VuY2VzQHlvY3RvcHJvamVjdC5vcmciPmJvdW5j
ZXNAeW9jdG9wcm9qZWN0Lm9yZzwvYT5dIE9uIEJlaGFsZiBPZiBNYXJ0aW4gSmFuc2EgPGJyPiZn
dDsgU2VudDogVGh1cnNkYXksIE9jdG9iZXIgMDIsIDIwMTQgMzowOSBQTSA8YnI+Jmd0OyBUbzog
Q2hyaXMgVGFwcCA8YnI+Jmd0OyBDYzogPGEgaHJlZj0ibWFpbHRvOnlvY3RvQHlvY3RvcHJvamVj
dC5vcmciPnlvY3RvQHlvY3RvcHJvamVjdC5vcmc8L2E+IDxicj4mZ3Q7IFN1YmplY3Q6IFJlOiBb
eW9jdG9dIFJlY29tbWVuZGVkIEhhcmR3YXJlIGZvciBidWlsZGluZyA8YnI+Jmd0OyA8YnI+Jmd0
OyBPbiBUaHUsIE9jdCAwMiwgMjAxNCBhdCAwNTo1MToyOVBNICswMTAwLCBDaHJpcyBUYXBwIHdy
b3RlOiA8YnI+Jmd0OyAmZ3Q7IDxicj4mZ3Q7ICZndDsgT24gMiBPY3QgMjAxNCwgYXQgMTE6MDQs
IEJ1cnRvbiwgUm9zcyB3cm90ZTogPGJyPiZndDsgJmd0OyA8YnI+Jmd0OyAmZ3Q7ICZndDsgT24g
MiBPY3RvYmVyIDIwMTQgMTA6MzYsIE9saXZlciBOb3Zha292aWMgPGJyPiZndDsgd3JvdGU6IDxi
cj4mZ3Q7ICZndDsgJmd0OyZndDsgQ2FuIGFueW9uZSByZWNvbW1lbmQgYSByZWFzb25hYmxlIHBl
cmZvcm1hbnQgaGFyZHdhcmUgc2V0dXAgdG8gPGJyPiZndDsgdXNlID8gPGJyPiZndDsgJmd0OyAm
Z3Q7Jmd0OyA8YnI+Jmd0OyAmZ3Q7ICZndDsmZ3Q7IFdoYXQgc2hvdWxkIGJlIGNvbnNpZGVyZWQg
PyBBcmUgdGhlcmUgYW55IHBpdGZhbGxzID8gV2hhdCBhYm91dCA8YnI+Jmd0OyAmZ3Q7ICZndDsm
Z3Q7IGJvdHRsZW5lY2tzIGluIHRoZSBidWlsZCBzeXN0ZW0gPyA8YnI+Jmd0OyA8YnI+Jmd0OyB5
b3Ugc2hvdWxkIHN0YXJ0IGJ5IHNheWluZyB3aGF0IHlvdSdyZSBnb2luZyB0byBidWlsZCwgbXkg
ZXhwZXJpZW5jZSBpcyBxdWl0ZSA8YnI+Jmd0OyBkaWZmZXJlbnQgd2hlbiBidWlsZGluZyAmcXVv
dDtzbWFsbCZxdW90OyBpbWFnZXMgbGlrZSBjb25zb2xlLWltYWdlIG9yIGV2ZW4geDExLWltYWdl
IDxicj4mZ3Q7IGFuZCAmcXVvdDtiaWcmcXVvdDsgaW1hZ2VzL2ZlZWRzIHdoaWNoIGNvbnRhaW4g
d2hvbGUgcXQ1IHN0YWNrLCAzIHdlYmtpdHMgYW5kIDxicj4mZ3Q7IDIgY2hyb21pdW0gYnVpbGRz
LiA8YnI+PGJyPkFncmVlZCwgd2hhdCB5b3UgYXJlIGJ1aWxkaW5nIGFuZCB3aGF0IHlvdXIgZ29h
bHMgYXJlIG1ha2VzIGEgZGlmZmVyZW5jZSBpbiB3aGF0IHlvdSBuZWVkLiBJIGhhdmUgYSBidWls
ZCBtYWNoaW5lIHNldHVwIHRoYXQgaXMgbWFpbmx5IHVzZWQgdG8gdmVyaWZ5IGV2ZXJ5dGhpbmcg
YnVpbGRzIGNvcnJlY3RseSBhZnRlciBjb21taXR0aW5nIGNoYW5nZXMuIEl0J3MgYW4gSW50ZWwg
aTMtMzIyMCB3aXRoIDhHQiBSQU0uIFRoZSBhdXRvYnVpbGRlciBpcyBzZXR1cCBvbiBhIExpbnV4
IFZNIHdoaWNoIGlzIGdpdmVuIDRHQiBSQU0gYW5kIGRvZXMgbm90IHJlY29nbml6ZSB0aGUgZXh0
cmEgSHlwZXItdGhyZWFkZWQgY29yZXMsIG1lYW5pbmcgaXQgYWN0cyBhcyBhIGR1YWwgY29yZSBt
YWNoaW5lLiBSZWJ1aWxkIG9mIG15IGNvbnNvbGUgaW1hZ2UgdHlwaWNhbGx5IHRha2VzIHVuZGVy
IDIwIG1pbnV0ZXMsIGFuZCBtb3N0IG9mIHRoYXQgdGltZSBpcyBwYWNrYWdpbmcvaW5zdGFsbC4g
QWZ0ZXIgdGhlIGluaXRpYWwgYnVpbGQsIHRoZXJlIHJlYWxseSBpc24ndCBtdWNoIGZvciBteSBz
eXN0ZW0gdGhhdCBuZWVkcyB0byBnZXQgcmVidWlsdCBiZXR3ZWVuIGNvbW1pdHMuIDxicj48YnI+
U28gaWYgeW91IGFyZSBsb29raW5nIGZvciBhIGJ1aWxkIG1hY2hpbmUgdGhhdCBpcyBvdXRzaWRl
IHlvdXIgbm9ybWFsIHdvcmtmbG93LCBhICQ0MDAgUEMgbWF5IGJlIGVub3VnaCBmb3IgeW91LiBJ
ZiB0aGlzIG1hY2hpbmUgaXMgZm9yIHlvdXIgZGV2ZWxvcG1lbnQgYnVpbGQgYW5kIHlvdSBoYXZl
IGEgaGF2ZSBhIGxvdCBvZiBncmFwaGljIGFwcGxpY2F0aW9ucyB0aGF0IHlvdSBuZWVkIHRvIGJ1
aWxkLCB5b3UgbWF5IHdhbnQgc29tZXRoaW5nIG1vcmUgaW4gbGluZSB3aXRoIHdoYXQgb3RoZXIg
cGVvcGxlIGFyZSBzdWdnZXN0aW5nLiA8YnI+PGJyPlJlZ2FyZHMsIDxicj5CcnlhbiA8YnI+PGJy
PiZndDsgPGJyPiZndDsgSW4gZ2VuZXJhbDogYml0YmFrZSB3aWxsIGJldHRlciB1dGlsaXplIGFs
bCBhdmFpbGFibGUgcGVyZm9ybWFuY2Ugd2l0aCBiaWdnZXIgPGJyPiZndDsgaW1hZ2UgKGUuZy4g
YnVpbGQgdGltZSBmb3IgY29uc29sZSBpbWFnZSB3b24ndCBjaGFuZ2Ugc28gbXVjaCBpZiB5b3Ug
Z28gZnJvbSA8YnI+Jmd0OyA4IGNvcmVzIHRvIDI0LCBidXQgYnVpbGRpbmcgZS5nLiBqdXN0IHdl
YmtpdCBhbG9uZSB3aWxsIGJlIG1vcmUgdGhhbiB0d2ljZSA8YnI+Jmd0OyBmYXN0ZXIgb24gMjQg
Y29yZXMpLiA8YnI+Jmd0OyA8YnI+Jmd0OyBSZWdhcmRzLCA8YnI+Jmd0OyA8YnI+Jmd0OyAmZ3Q7
ICZndDsmZ3Q7IFNwZWNpZmljYWxseTogPGJyPiZndDsgJmd0OyAmZ3Q7Jmd0OyA8YnI+Jmd0OyAm
Z3Q7ICZndDsmZ3Q7IEhvdyBtYW55IGNvcmVzIGFyZSByZWNvbW1lbmRlZCA/IEFuZCBob3cgbXVj
aCBjYWNoZSBpcyBuZWNlc3NhcnkgPGJyPiZndDsgPyA8YnI+Jmd0OyAmZ3Q7ICZndDsmZ3Q7IEhv
dyBtdWNoIG9mIHRoZSBtYWluIG1lbW9yeSBkb2VzIFlvY3RvIHJlYWxseSB1c2UgPyBJcyAzMiBH
QiA8YnI+Jmd0OyAmZ3Q7ICZndDsmZ3Q7IHN1ZmZpY2llbnQgb3Igc2hvdWxkIEkgZ28gZm9yIDY0
ID8gPGJyPiZndDsgJmd0OyAmZ3Q7Jmd0OyA8YnI+Jmd0OyAmZ3Q7ICZndDsmZ3Q7IERvZXMgaXQg
bWFrZSBzZW5zZSB0byB1c2UgdHdvIFNTRHMgYXMgUmFpZDAgdG8gZ2V0IGJ1aWxkcyBmYXN0ZXIg
PyA8YnI+Jmd0OyAmZ3Q7ICZndDsgPGJyPiZndDsgJmd0OyAmZ3Q7IEFzIG11Y2ggb2YgZXZlcnl0
aGluZyBhcyB5b3UgY2FuIGFmZm9yZC4gOikgVGhlIGJ1aWxkIGlzbid0IGhlYXZ5IDxicj4mZ3Q7
ICZndDsgJmd0OyBpbiBhbnkgcGFydGljdWxhciBtZXRyaWMsIHNvIGRvbid0IHNhY3JpZmljZSBS
QU0gZm9yIFNTRHMgZm9yIGV4YW1wbGUuIDxicj4mZ3Q7ICZndDsgJmd0OyA8YnI+Jmd0OyAmZ3Q7
ICZndDsgUkFJRCAwIG92ZXIgU1NEIHdvdWxkIGJlIG5pY2UgYW5kIGZhc3QsIGJ1dCBJIHByZWZl
ciBoYXZpbmcgYSBnb29kIDxicj4mZ3Q7ICZndDsgJmd0OyBhbW91bnQgb2YgUkFNIGFuZCBhIHR1
bmVkIGV4dDQgKG5vIGpvdXJuYWwsIGxvbmcgY29tbWl0IGRlbGF5KSBzbyA8YnI+Jmd0OyAmZ3Q7
ICZndDsgZGF0YSBkb2Vzbid0IGFjdHVhbGx5IGhpdCB0aGUgZGlzayBhcyBmcmVxdWVudGx5LiBL
ZWVwaW5nIHRoZSBhY3R1YWwgPGJyPiZndDsgJmd0OyAmZ3Q7IGJ1aWxkIGRpcmVjdG9yaWVzIG9u
IGEgc2VwYXJhdGUgZGlzayBpcyBnb29kIGZvciBwZXJmb3JtYW5jZSBhbmQgbm90IDxicj4mZ3Q7
ICZndDsgJmd0OyBjYXVzaW5nIGRhdGEgbG9zcyB3aGVuIHlvdSBsb3NlIGEgZGlzay4gPGJyPiZn
dDsgJmd0OyAmZ3Q7IDxicj4mZ3Q7ICZndDsgJmd0OyBUaGVyZSBhcmUgcGVvcGxlIHRoYXQgaGF2
ZSA2NEdCIGluIG1hY2hpbmVzIGFuZCB0aGVuIHNldCBUTVBESVIgdG8gYSA8YnI+Jmd0OyAmZ3Q7
ICZndDsgdG1wZnMuIFN1cnByaXNpbmdseSB0aGlzIGlzbid0IHRoYXQgbXVjaCBmYXN0ZXIgKDUl
IG9yIHNvKSwgYnV0IDxicj4mZ3Q7ICZndDsgJmd0OyBpdCdzIGEgbG90IGVhc2llciBvbiB0aGUg
aGFyZHdhcmUgYW5kIHBvd2VyIGNvbnN1bXB0aW9uLiA8YnI+Jmd0OyAmZ3Q7IDxicj4mZ3Q7ICZn
dDsgTXkgZXhwZXJpZW5jZTogPGJyPiZndDsgJmd0OyA8YnI+Jmd0OyAmZ3Q7IEkndmUgZ290IGEg
cXVhZCBjb3JlIHdpdGggaHlwZXItdGhyZWFkaW5nIChzbyA4IHVzYWJsZSBjb3JlcykgcnVubmlu
ZyBhdCA8YnI+Jmd0OyBhYm91dCAzLjggR0h6LCAxNkdCIG9mIFJBTSBhbmQgdXNlIG11bHRpcGxl
IFNTRHMgLSBvbmUgdG8gaG9sZCB0aGUgbWV0YSA8YnI+Jmd0OyBkYXRhLCBkb3dubG9hZHMgYW5k
IHRvcCBsZXZlbCBidWlsZCBhcmVhcyAobG9jYWwuY29uZiwgZXRjKSBhbmQgaGF2ZSB0aGUgPGJy
PiZndDsgVE1QRElSIG9uIGEgc2Vjb25kIFNTRCAoc28sIGFzIFJvc3Mgc2F5cywgSSBkb24ndCBn
ZXQgYSBzdXJwcmlzZSB3aGVuIGl0IDxicj4mZ3Q7IHdlYXJzIG91dCEpLiA8YnI+Jmd0OyAmZ3Q7
IDxicj4mZ3Q7ICZndDsgSSBjYW4gYnVpbGQgbXkgaW1hZ2VzIChiYXNpY2FsbHkgYW4geDExIGlt
YWdlKSBpbiBqdXN0IHVuZGVyIDYwIG1pbnV0ZXMgPGJyPiZndDsgKG9uY2UgYWxsIHRoZSBmaWxl
cyBoYXZlIGJlZW4gZmV0Y2hlZCkuIEkgcnVuIHdpdGggQkJfTlVNQkVSX1RIUkVBRFMgYW5kIDxi
cj4mZ3Q7IFBBUkFMTEVMX01BS0UgYm90aCBzZXQgdG8gMTYgdG8gbWFrZSBzdXJlIHRoZSBjb3Jl
cyBhcmUgZnVsbHkgbG9hZGVkIGFzIDxicj4mZ3Q7IG11Y2ggYXMgcG9zc2libGUgKG90aGVyIHNh
eXMgdGhhdCBzaG91bGQgYmUgOCBhbmQgOCB0byByZWR1Y2Ugc2NoZWR1bGluZyA8YnI+Jmd0OyBv
dmVyaGVhZCkuIDxicj4mZ3Q7ICZndDsgPGJyPiZndDsgJmd0OyBEdXJpbmcgdGhlIGJ1aWxkIHRo
ZSBzeXN0ZW0gaXMgQ1BVIGJvdW5kIHF1aXRlIGEgYml0IG9mIHRoZSB0aW1lIChzbyBtb3JlIDxi
cj4mZ3Q7IGNvcmVzIHNob3VsZCBoZWxwKSwgYnV0IHRoZXJlIGFyZSBzaWduaWZpY2FudCBwZXJp
b2RzIHdoZXJlIHRoZSBidWlsZCA8YnI+Jmd0OyBkZXBlbmRlbmN5IGNoYWluIG1lYW5zIHRoaXMg
aXNuJ3QgdGhlIGNhc2UgYW5kIG9ubHkgdHdvIG9yIHRocmVlIGNvcmVzIGFyZSA8YnI+Jmd0OyBh
Y3RpdmUuIFByZXZpb3VzbHkgSSByZWNhbGwgY29tcGFyaW5nIHJlc3VsdHMgd2l0aCBzb21lb25l
IGVsc2UgYW5kIGZpbmRpbmcgPGJyPiZndDsgdGhhdCBoYXZpbmcgbG90cyBtb3JlIGNvcmVzICgy
NCwgSSB0aGluaykgZGlkbid0IGdpdmUgYSBzaWduaWZpY2FudCBpbXByb3ZlbWVudCA8YnI+Jmd0
OyBpbiBidWlsZCB0aW1lIChjZXJ0YWlubHkgbm90IGZvciB0aGUgM3ggc3lzdGVtIGJ1aWxkIGNv
c3QpLiA8YnI+Jmd0OyAmZ3Q7IDxicj4mZ3Q7ICZndDsgSSd2ZSBuZXZlciBzZWVuIHBlYWsgbWVt
b3J5IHVzYWdlIGdvIG11Y2ggYWJvdmUgOSBHQiBkdXJpbmcgYSBidWlsZCwgPGJyPiZndDsgYW5k
IHRoZSBwZWFrcyBnZW5lcmFsbHkgY29pbmNpZGUgd2l0aCBsaW5raW5nIGFjdGl2aXRpZXMgZm9y
ICZxdW90O2JpZyZxdW90OyBpdGVtcyAoZ2NjLCA8YnI+Jmd0OyBlZ2xpYmMpLiBUaGlzIGlzIGxp
a2VseSB0byBnbyBoaWdoZXIgd2l0aCBtb3JlIGFjdGl2ZSB0aHJlYWRzLiA8YnI+Jmd0OyAmZ3Q7
IDxicj4mZ3Q7ICZndDsgSSBzdGFydGVkIG91dCB3aXRoIGEgUkFJRC0wIFNTRCBidWlsZCBhcnJh
eSwgYnV0IEkgZGlkbid0IHJlYWxseSBzZWUgYW55IDxicj4mZ3Q7IGRpZmZlcmVuY2Ugb3ZlciBh
IHNpbmdsZSBoaWdoLXNwZWMgKGNvbnN1bWVyKSBTU0QuIEFzIFJvc3Mgc2FpZCwgcnVubmluZyBh
IDxicj4mZ3Q7IGZhc3QgZmlsZSBzeXN0ZW0gb24gdGhlIGRpc2sgaXMgYSBnb29kIGlkZWEuIDxi
cj4mZ3Q7ICZndDsgPGJyPiZndDsgJmd0OyAtLSA8YnI+Jmd0OyAmZ3Q7IDxicj4mZ3Q7ICZndDsg
Q2hyaXMgVGFwcCA8YnI+Jmd0OyAmZ3Q7IDxhIGhyZWY9Im1haWx0bzpvcGVuc291cmNlQGtleWxl
dmVsLmNvbSI+b3BlbnNvdXJjZUBrZXlsZXZlbC5jb208L2E+IDxicj4mZ3Q7ICZndDsgPGEgaHJl
Zj0iaHR0cDovL3d3dy5rZXlsZXZlbC5jb20iPnd3dy5rZXlsZXZlbC5jb208L2E+IDxicj4mZ3Q7
ICZndDsgPGJyPiZndDsgJmd0OyAtLS0tIDxicj4mZ3Q7ICZndDsgWW91IGNhbiB0ZWxsIHlvdSdy
ZSBnZXR0aW5nIG9sZGVyIHdoZW4geW91ciBjYXIgaW5zdXJhbmNlIGdldHMgcmVhbCBjaGVhcCEg
PGJyPiZndDsgJmd0OyA8YnI+Jmd0OyAmZ3Q7IC0tIDxicj4mZ3Q7ICZndDsgX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18gPGJyPiZndDsgJmd0OyB5b2N0byBt
YWlsaW5nIGxpc3QgPGJyPiZndDsgJmd0OyA8YSBocmVmPSJtYWlsdG86eW9jdG9AeW9jdG9wcm9q
ZWN0Lm9yZyI+eW9jdG9AeW9jdG9wcm9qZWN0Lm9yZzwvYT4gPGJyPiZndDsgJmd0OyA8YSBocmVm
PSJodHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC5vcmcvbGlzdGluZm8veW9jdG8iPmh0dHBzOi8v
bGlzdHMueW9jdG9wcm9qZWN0Lm9yZy9saXN0aW5mby95b2N0bzwvYT4gPGJyPiZndDsgPGJyPiZn
dDsgLS0gPGJyPiZndDsgTWFydGluICdKYU1hJyBKYW5zYSBqYWJiZXI6IDxhIGhyZWY9Im1haWx0
bzpNYXJ0aW4uSmFuc2FAZ21haWwuY29tIj5NYXJ0aW4uSmFuc2FAZ21haWwuY29tPC9hPiA8bzpw
PjwvbzpwPjwvcD48L2Rpdj48YnI+DQo8Zm9udCBzaXplPSIyIiBmYWNlPSJBcmlhbCI+QWxwaW5l
IEVsZWN0cm9uaWNzIFImYW1wO0QgRXVyb3BlIEdtYkgsIFZvciBkZW0gTGF1Y2ggMTQsIDcwNTY3
IFN0dXR0Z2FydCw8L2ZvbnQ+PGJyPg0KPGZvbnQgc2l6ZT0iMiIgZmFjZT0iQXJpYWwiPlJlZ2lz
dGVyZ2VyaWNodCBTdHV0dGdhcnQsIEhSQiAyNTI2NTwvZm9udD48YnI+DQo8Zm9udCBzaXplPSIy
IiBmYWNlPSJBcmlhbCI+R2VzY2hhZWZ0c2Z1ZWhyZXI6IDwvZm9udD48Zm9udCBzaXplPSIyIiBm
YWNlPSJBcmlhbCI+VG9zaGlub3JpIEtvYmF5YXNoaSwgU2h1amkgVGFndWNoaTwvZm9udD48YnI+
DQo8Zm9udCBzaXplPSIyIiBmYWNlPSJBcmlhbCI+V29ya2luZyBvZmZpY2U6IFZvciBkZW0gTGF1
Y2ggMTQsIDcwNTY3IFN0dXR0Z2FydDwvZm9udD48YnI+DQo8YnI+DQo8Zm9udCBzaXplPSIyIiBm
YWNlPSJBcmlhbCI+QVRURU5USU9OOiBUaGlzIGUtbWFpbCBhbmQgYW55IGZpbGVzIHRyYW5zbWl0
dGVkIHdpdGggaXQgbWF5IGJlIHByaXZpbGVnZWQ8L2ZvbnQ+PGJyPg0KPGZvbnQgc2l6ZT0iMiIg
ZmFjZT0iQXJpYWwiPmFuZC9vciBjb25maWRlbnRpYWwsIGFuZCBhcmUgaW50ZW5kZWQgc29sZWx5
IGZvciB0aGUgdXNlIG9mIHRoZSBpbmRpdmlkdWFsPC9mb250Pjxicj4NCjxmb250IHNpemU9IjIi
IGZhY2U9IkFyaWFsIj5vciBlbnRpdHkgdG8gd2hvbSB0aGlzICBlLW1haWwgaXMgYWRkcmVzc2Vk
LiBJZiB5b3UgYXJlIG5vdCBvbmUgb2YgdGhlPC9mb250Pjxicj4NCjxmb250IHNpemU9IjIiIGZh
Y2U9IkFyaWFsIj5uYW1lZCByZWNpcGllbnRzIG9yIG90aGVyd2lzZSAgaGF2ZSByZWFzb24gdG8g
YmVsaWV2ZSB0aGF0IHlvdSBoYXZlPC9mb250Pjxicj4NCjxmb250IHNpemU9IjIiIGZhY2U9IkFy
aWFsIj5yZWNlaXZlZCB0aGlzIGUtbWFpbCBpbiBlcnJvciwgcGxlYXNlIG5vdGlmeSAgdGhlIHNl
bmRlciBhbmQgZGVsZXRlIHRoaXM8L2ZvbnQ+PGJyPg0KPGZvbnQgc2l6ZT0iMiIgZmFjZT0iQXJp
YWwiPm1lc3NhZ2UgaW1tZWRpYXRlbHkgZnJvbSB5b3VyIGNvbXB1dGVyLiBXZSB0aGFuayB5b3Ug
Zm9yIHlvdXIgY29vcGVyYXRpb24uPC9mb250PjwvYm9keT48L2h0bWw+

--=_alternative 00304875C1257D69_=--
