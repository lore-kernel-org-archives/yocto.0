Return-Path: <felix01.fischer@iav.de>
Received: from mailout03.rmx.de (mailout03.rmx.de [217.111.120.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68D2AE01541
	for <yocto@yoctoproject.org>; Thu,  2 May 2013 01:08:49 -0700 (PDT)
Received: from cryptout02.retarus.com ([172.19.21.79])
	by mailout03.rmx.de (8.14.4/8.14.5/retarus.custom) with ESMTP id
	r4288jWa002816
	for <yocto@yoctoproject.org>; Thu, 2 May 2013 10:08:45 +0200
Received: from cryptout02 (localhost [127.0.0.1])
	by cryptout02.retarus.com (Postfix) with ESMTP id 77C9DE4051
	for <yocto@yoctoproject.org>; Thu,  2 May 2013 10:08:45 +0200 (CEST)
Received: from cryptrouter01.dmz2.retloc (unknown [172.19.21.36])
	by cryptout02.retarus.com (Postfix) with SMTP id 1A77AE4051
	for <yocto@yoctoproject.org>; Thu,  2 May 2013 10:08:45 +0200 (CEST)
X-RMX-Split: 2013-05-02 10:08:42 +0200
In-Reply-To: <518029CA.7080600@linux.intel.com>
References: <OF804FFBA4.FE98BF7E-ONC1257B5D.004B9DB5-C1257B5D.004E012E@retarus.de>
	<518029CA.7080600@linux.intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
MIME-Version: 1.0
X-KeepSent: 961E4439:7CFE5DF9-C1257B5F:002B2D30;
 type=4; name=$KeepSent
X-Mailer: Lotus Notes Release 8.5.3FP1 March 08, 2012
From: Felix01 Fischer <felix01.fischer@iav.de>
Message-ID: <OF961E4439.7CFE5DF9-ONC1257B5F.002B2D30-C1257B5F.002CAC3A@retarus.de>
Date: Thu, 2 May 2013 10:08:01 +0200
X-RouteServers: CN=SRVB02M/O=IAV;CN=SRVHUB1/O=IAV
X-MIMETrack: Serialize by Router on jaja/RetarusMail(Release 8.5.3FP3|November
	15, 2012) at 05/02/2013 10:08:23
X-RMX-ID: 20130502-100823-r4288N6L013465-0@kdin01
X-RMX-TRACE: 2013-05-02 10:08:24 KdIn2013@kdin01/mailcc05 [0.6s]
	20130502-100823-r4288N6L013465-0@kdin01 0:00:00
X-RMX-TRACE: 2013-05-02 10:08:24 RmxMSO@kdin01/mailcc10 [0.0s]
	20130502-100823-r4288N6L013465-0@kdin01 0:00:01
Subject: Antwort: Re: booting with systemd fails with poky 9.0.0 & meta-ivi 4.0 & meta-intel master
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
X-List-Received-Date: Thu, 02 May 2013 08:08:49 -0000
X-Groupsio-MsgNum: 13538
Content-Type: multipart/mixed; boundary="=_mixed 002CAC39C1257B5F_="

--=_mixed 002CAC39C1257B5F_=
Content-Type: multipart/alternative; boundary="=_alternative 002CAC39C1257B5F_="

--=_alternative 002CAC39C1257B5F_=
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

I've attached a file with the changes I made to local.conf, bblayers.conf=20
& some output from bitbake. I can build working images for qemux86, too

The build process itself triggers no errors.

As im building with MACHINE ??=3D "crownbay" I was able to locate
tmp-eglibc-eglibc/work/crownbay-oe-linux/foton-image/4.0.0-r0/rootfs/bin/mo=
unt=20
which is a symlink to /bin/mount.util-linux. This file exists, too.

This is the output when trying to boot, beginning with the /init error

"/init: line 98: mount: not found
/init: line 98: mount: not found
/init: line 98: mount: not found
systemd-udev[44]: starting version 199
cat: can't open '/proc/cmdline': No such file or directory
Waiting for removable media..."

If I attach a keyboard it gets recognised but besides that, nothing else=20
happens.


Viele Gr=FC=DFe

Felix Fischer

Studentischer Mitarbeiter (VC-D1)
Vehicle Cockpit Electronics Devices

IAV GmbH
Carnotstr. 1
10587 BERLIN
GERMANY

Phone: +49 30 39978-9540
Fax:      +49 30 39978-9411
E-Mail:  <mailto:felix01.fischer@iav.de>
Internet: http://www.iav.com

Sitz/Registered Office: Berlin,=20
Registergericht/Registration Court: Amtsgericht Charlottenburg,=20
Registernummer/Company Registration Number: HRB 21 280,=20
Gesch=E4ftsf=FChrer/Managing Directors: Kurt Blumenr=F6der, Michael Schuber=
t,=20
Dr. R=FCdiger Goyk
=20



Saul Wold <sgw@linux.intel.com>=20
30.04.2013 22:30

An
Felix01 Fischer <felix01.fischer@iav.de>,=20
Kopie
"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thema
Re: [yocto] booting with systemd fails with poky 9.0.0 & meta-ivi 4.0 &=20
meta-intel master=20






On 04/30/2013 07:12 AM, Felix01 Fischer wrote:
> Hello,
>
> I am not able to boot a genivi-compliant yocto build. The error is
>
> "/init:: line XX: mount: not found"
>
> I'm using poky 9.0.0, meta-ivi 4.0 & meta-intel master, machine??=3D
> crownbay, DISTRO ?=3D "poky-ivi-systemd" and followed the inherent README.
>
I attempted a similar build with qemux86-64 and did not find any=20
problems with it, I was able to boot corrrectly to login prompt=20
generated from systemd.

I am looking at the rootfs, can you confirm if mount is correctly=20
installed in your rootfs?  You can look in=20
tmp-eglibc-eglibc/work/qemux86=5F64-oe-linux/foton-image/4.0.0-r0/rootfs/=20
to see if mount is installed correctly in bin.

Do you have another log output?

Did you change anything else?

Thanks
                 Sau!


> This error occurred with yocto 8.0.1, meta-ivi 3.0 & meta-intel 8.0.0,=20
too.
>
> I'm kinda new to the whole systemd thing, so maybe this error is trivial
> to solve?
>
> Regards,
>
> Felix Fischer
>
>
> Viele Gr=FC=DFe
>
> Felix Fischer
>
> Studentischer Mitarbeiter (VC-D1)
> Vehicle Cockpit Electronics Devices
>
> IAV GmbH
> Carnotstr. 1
> 10587 BERLIN
> GERMANY
>
> Phone: +49 30 39978-9540
> Fax:      +49 30 39978-9411
> E-Mail:  <mailto:felix01.fischer@iav.de>
> Internet: http://www.iav.com <http://www.iav.com/>
>
> Sitz/Registered Office: Berlin,
> Registergericht/Registration Court: Amtsgericht Charlottenburg,
> Registernummer/Company Registration Number: HRB 21 280,
> Gesch=E4ftsf=FChrer/Managing Directors: Kurt Blumenr=F6der, Michael Schub=
ert,
> Dr. R=FCdiger Goyk
>
>
> =5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


--=_alternative 002CAC39C1257B5F_=
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

<font size=3D2 face=3D"sans-serif">Hello,<br>
</font>
<br><font size=3D2 face=3D"sans-serif">I've attached a file with the changes
I made to local.conf, bblayers.conf &amp; some output from bitbake. I can
build working images for qemux86, too</font>
<br><font size=3D2 face=3D"sans-serif"><br>
The build process itself triggers no errors.<br>
</font>
<br><font size=3D2 face=3D"sans-serif">As im building with MACHINE ??=3D &q=
uot;crownbay&quot;
I was able to locate<br>
</font><tt><font size=3D2>tmp-eglibc-eglibc/work/crownbay-oe-linux/foton-im=
age/4.0.0-r0/rootfs/bin/mount
which is a symlink to /bin/mount.util-linux. This file exists, too.</font><=
/tt>
<br>
<br><tt><font size=3D2>This is the output when trying to boot, beginning
with the /init error<br>
<br>
&quot;/init: line 98: mount: not found</font></tt>
<br><tt><font size=3D2>/init: line 98: mount: not found</font></tt>
<br><tt><font size=3D2>/init: line 98: mount: not found</font></tt>
<br><font size=3D2 face=3D"sans-serif">systemd-udev[44]: starting version 1=
99</font>
<br><font size=3D2 face=3D"sans-serif">cat: can't open '/proc/cmdline': No
such file or directory</font>
<br><font size=3D2 face=3D"sans-serif">Waiting for removable media...&quot;=
<br>
<br>
If I attach a keyboard it gets recognised but besides that, nothing else
happens.</font>
<br>
<br>
<br><font size=3D2 face=3D"sans-serif">Viele Gr=FC=DFe<br>
<br>
Felix Fischer<br>
<br>
Studentischer Mitarbeiter (VC-D1)<br>
Vehicle Cockpit Electronics Devices<br>
<br>
IAV GmbH<br>
Carnotstr. 1<br>
10587 BERLIN<br>
GERMANY<br>
<br>
Phone: +49 30 39978-9540<br>
Fax: &nbsp; &nbsp; &nbsp;+49 30 39978-9411<br>
E-Mail: &nbsp;&lt;</font><a href=3Dmailto:felix01.fischer@iav.de><font size=
=3D2 face=3D"sans-serif">mailto:felix01.fischer@iav.de</font></a><font size=
=3D2 face=3D"sans-serif">&gt;<br>
Internet: </font><a href=3Dhttp://www.iav.com/><font size=3D2 face=3D"sans-=
serif">http://www.iav.com</font></a><font size=3D2 face=3D"sans-serif"><br>
<br>
Sitz/Registered Office: Berlin, <br>
Registergericht/Registration Court: Amtsgericht Charlottenburg, <br>
Registernummer/Company Registration Number: HRB 21 280, <br>
Gesch=E4ftsf=FChrer/Managing Directors: Kurt Blumenr=F6der, Michael Schuber=
t,
Dr. R=FCdiger Goyk<br>
 </font>
<br>
<br>
<br>
<table width=3D100%>
<tr valign=3Dtop>
<td width=3D40%><font size=3D1 face=3D"sans-serif"><b>Saul Wold &lt;sgw@lin=
ux.intel.com&gt;</b>
</font>
<p><font size=3D1 face=3D"sans-serif">30.04.2013 22:30</font>
<td width=3D59%>
<table width=3D100%>
<tr valign=3Dtop>
<td>
<div align=3Dright><font size=3D1 face=3D"sans-serif">An</font></div>
<td><font size=3D1 face=3D"sans-serif">Felix01 Fischer &lt;felix01.fischer@=
iav.de&gt;,
</font>
<tr valign=3Dtop>
<td>
<div align=3Dright><font size=3D1 face=3D"sans-serif">Kopie</font></div>
<td><font size=3D1 face=3D"sans-serif">&quot;yocto@yoctoproject.org&quot; &=
lt;yocto@yoctoproject.org&gt;</font>
<tr valign=3Dtop>
<td>
<div align=3Dright><font size=3D1 face=3D"sans-serif">Thema</font></div>
<td><font size=3D1 face=3D"sans-serif">Re: [yocto] booting with systemd fai=
ls
with poky 9.0.0 &amp; meta-ivi 4.0 &amp; meta-intel master</font><font size=
=3D2 face=3D"sans-serif">
</font></table>
<br>
<table>
<tr valign=3Dtop>
<td>
<td></table>
<br></table>
<br>
<br>
<br><tt><font size=3D2>On 04/30/2013 07:12 AM, Felix01 Fischer wrote:<br>
&gt; Hello,<br>
&gt;<br>
&gt; I am not able to boot a genivi-compliant yocto build. The error is<br>
&gt;<br>
&gt; &quot;/init:: line XX: mount: not found&quot;<br>
&gt;<br>
&gt; I'm using poky 9.0.0, meta-ivi 4.0 &amp; meta-intel master, machine??=
=3D<br>
&gt; crownbay, DISTRO ?=3D &quot;poky-ivi-systemd&quot; and followed the
inherent README.<br>
&gt;<br>
I attempted a similar build with qemux86-64 and did not find any <br>
problems with it, I was able to boot corrrectly to login prompt <br>
generated from systemd.<br>
<br>
I am looking at the rootfs, can you confirm if mount is correctly <br>
installed in your rootfs? &nbsp;You can look in <br>
tmp-eglibc-eglibc/work/qemux86=5F64-oe-linux/foton-image/4.0.0-r0/rootfs/
<br>
to see if mount is installed correctly in bin.<br>
<br>
Do you have another log output?<br>
<br>
Did you change anything else?<br>
<br>
Thanks<br>
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
Sau!<br>
<br>
<br>
&gt; This error occurred with yocto 8.0.1, meta-ivi 3.0 &amp; meta-intel
8.0.0, too.<br>
&gt;<br>
&gt; I'm kinda new to the whole systemd thing, so maybe this error is trivi=
al<br>
&gt; to solve?<br>
&gt;<br>
&gt; Regards,<br>
&gt;<br>
&gt; Felix Fischer<br>
&gt;<br>
&gt;<br>
&gt; Viele Gr=FC=DFe<br>
&gt;<br>
&gt; Felix Fischer<br>
&gt;<br>
&gt; Studentischer Mitarbeiter (VC-D1)<br>
&gt; Vehicle Cockpit Electronics Devices<br>
&gt;<br>
&gt; IAV GmbH<br>
&gt; Carnotstr. 1<br>
&gt; 10587 BERLIN<br>
&gt; GERMANY<br>
&gt;<br>
&gt; Phone: +49 30 39978-9540<br>
&gt; Fax: &nbsp; &nbsp; &nbsp;+49 30 39978-9411<br>
&gt; E-Mail: &nbsp;&lt;</font></tt><a href=3Dmailto:felix01.fischer@iav.de>=
<tt><font size=3D2>mailto:felix01.fischer@iav.de</font></tt></a><tt><font s=
ize=3D2>&gt;<br>
&gt; Internet: </font></tt><a href=3Dhttp://www.iav.com/><tt><font size=3D2=
>http://www.iav.com</font></tt></a><tt><font size=3D2>
&lt;</font></tt><a href=3Dhttp://www.iav.com/><tt><font size=3D2>http://www=
.iav.com/</font></tt></a><tt><font size=3D2>&gt;<br>
&gt;<br>
&gt; Sitz/Registered Office: Berlin,<br>
&gt; Registergericht/Registration Court: Amtsgericht Charlottenburg,<br>
&gt; Registernummer/Company Registration Number: HRB 21 280,<br>
&gt; Gesch=E4ftsf=FChrer/Managing Directors: Kurt Blumenr=F6der, Michael Sc=
hubert,<br>
&gt; Dr. R=FCdiger Goyk<br>
&gt;<br>
&gt;<br>
&gt; =5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F<br>
&gt; yocto mailing list<br>
&gt; yocto@yoctoproject.org<br>
&gt; </font></tt><a href=3Dhttps://lists.yoctoproject.org/listinfo/yocto><t=
t><font size=3D2>https://lists.yoctoproject.org/listinfo/yocto</font></tt><=
/a><tt><font size=3D2><br>
&gt;<br>
</font></tt>
<br>

--=_alternative 002CAC39C1257B5F_=--

--=_mixed 002CAC39C1257B5F_=
Content-Type: application/octet-stream; name="yocto_logs"
Content-Disposition: attachment; filename="yocto_logs"
Content-Transfer-Encoding: base64

QnVpbGQgQ29uZmlndXJhdGlvbjoKQkJfVkVSU0lPTiAgICAgICAgPSAiMS4xOC4wIgpCVUlMRF9T
WVMgICAgICAgICA9ICJ4ODZfNjQtbGludXgiCk5BVElWRUxTQlNUUklORyAgID0gIlVidW50dS0x
Mi4wNCIKVEFSR0VUX1NZUyAgICAgICAgPSAiaTU4Ni1vZS1saW51eCIKTUFDSElORSAgICAgICAg
ICAgPSAiY3Jvd25iYXkiCkRJU1RSTyAgICAgICAgICAgID0gInBva3ktaXZpLXN5c3RlbWQiCkRJ
U1RST19WRVJTSU9OICAgID0gIjQuMC4wIgpUVU5FX0ZFQVRVUkVTICAgICA9ICJtMzIgY29yZTIi
ClRBUkdFVF9GUFUgICAgICAgID0gIiIKbWV0YSAgICAgICAgICAgICAgCm1ldGEteW9jdG8gICAg
ICAgIAptZXRhLXlvY3RvLWJzcCAgICAKbWV0YS1pdmktNC4wLjAgICAgPSAiPHVua25vd24+Ojx1
bmtub3duPiIKbWV0YS1pbnRlbCAgICAgICAgCm1ldGEtY3Jvd25iYXkgICAgID0gImR5bGFuOjYx
NDdiYTBlOTYyYzNkN2JhMjhiNTNiOWI5MzBmMWJlZDU4MzNjOTAiCm1ldGEtcXQ1ICAgICAgICAg
ID0gIm1hc3RlcjphMzc2Y2M2MWVkMDBlY2NkMDg5MjkzNmQxMDFhMWVjZWNlMGU2ZjNjIgoKCgpC
QkxBWUVSUyA/PSAiIFwKICAvaG9tZS9mZWxpeC9wb2t5LWR5bGFuLTkuMC4wL21ldGEgXAogIC9o
b21lL2ZlbGl4L3Bva3ktZHlsYW4tOS4wLjAvbWV0YS15b2N0byBcCiAgL2hvbWUvZmVsaXgvcG9r
eS1keWxhbi05LjAuMC9tZXRhLXlvY3RvLWJzcCBcCiAgL2hvbWUvZmVsaXgvcG9reS1keWxhbi05
LjAuMC9tZXRhLWl2aS00LjAuMCBcCiAgL2hvbWUvZmVsaXgvcG9reS1keWxhbi05LjAuMC9tZXRh
LWludGVsIFwKICAvaG9tZS9mZWxpeC9wb2t5LWR5bGFuLTkuMC4wL21ldGEtaW50ZWwvbWV0YS1j
cm93bmJheSBcCgoKCmZlbGl4QElBVi1kZXNrdG9wOn4kIGRpZmYgYnVpbGRfZm9sZGVyL2Nyb3du
YmF5L2J1aWxkL2NvbmYvbG9jYWwuY29uZiBidWlsZF9mb2xkZXIvZm90b24tY3Jvd25iYXkvYnVp
bGQvY29uZi9sb2NhbC5jb25mCjBhMQo+IExJQ0VOU0VfRkxBR1NfV0hJVEVMSVNUID0gImxpY2Vu
c2VfZW1nZC1kcml2ZXItYmluXzEuMTYgY29tbWVyY2lhbCIKMjBjMjEKPCAjQkJfTlVNQkVSX1RI
UkVBRFMgPSAiNCIKLS0tCj4gQkJfTlVNQkVSX1RIUkVBRFMgPSAiMiIKMjVjMjYKPCAjUEFSQUxM
RUxfTUFLRSA9ICItaiA0IgotLS0KPiBQQVJBTExFTF9NQUtFID0gIi1qIDIiCjUxYzUyCjwgTUFD
SElORSA/Pz0gInFlbXV4ODYiCi0tLQo+IE1BQ0hJTkUgPz89ICJjcm93bmJheSIKNjRjNjUKPCAj
RExfRElSID89ICIke1RPUERJUn0vZG93bmxvYWRzIgotLS0KPiBETF9ESVIgPz0gIi9ob21lL2Zl
bGl4L3Bva3ktZHlsYW4tOS4wLjAvZG93bmxvYWRzIgoxMDJjMTAzCjwgRElTVFJPID89ICJwb2t5
IgotLS0KPiBESVNUUk8gPz0gInBva3ktaXZpLXN5c3RlbWQiCg==

--=_mixed 002CAC39C1257B5F_=--
