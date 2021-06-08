Subject: [meta-java] icedtea7 fetching error
To: yocto@lists.yoctoproject.org
From: George.Mocanu@rinftech.com
X-Originating-Location: Nucet, Dambovita, RO (85.186.184.32)
X-Originating-Platform: Windows Firefox 88
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 07 Jun 2021 23:09:54 -0700
Message-ID: <98hT.1623132594082542882.bzIp@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="YA0U8l3MIy6ujOJ37fea"

--YA0U8l3MIy6ujOJ37fea
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I am trying to build something that relies on meta-java, but it fails on d=
o_fetch for the icedtea7 recipe:

--2021-06-07 17:24:33--  http://icedtea.classpath.org/hg/release/icedtea7-=
forest-2.1/archive/f89009ada191.tar.bz2
Resolving icedtea.classpath.org (icedtea.classpath.org)... 172.104.137.120
Connecting to icedtea.classpath.org (icedtea.classpath.org)|172.104.137.12=
0|:80... connected.
HTTP request sent, awaiting response... 404 Not Found
2021-06-07 16:21:05 ERROR 404: Not Found.

ERROR: icedtea7-native-2.1.3-r1.0 do_fetch: Fetcher failure for URL: ' htt=
p://icedtea.classpath.org/hg/release/icedtea7-forest-2.1/archive/f89009ada1=
91.tar.bz2;name=3Dopenjdk;unpack=3Dfalse;downloadfilename=3Dopenjdk-f89009a=
da191.tar.bz2 '. Unable to fetch URL from any source.

Following this link, seems like the webserver is down. Do you know any mir=
ror that I can use in the meantime?

Thanks,
George

--YA0U8l3MIy6ujOJ37fea
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hello,</p>
<p><br />I am trying to build something that relies on meta-java, but it f=
ails on do_fetch for the icedtea7 recipe:</p>
<pre class=3D"console-output"><span class=3D"pipeline-node-71">--2021-06-0=
7 17:24:33--  <a href=3D"http://icedtea.classpath.org/hg/release/icedtea7-f=
orest-2.1/archive/f89009ada191.tar.bz2">http://icedtea.classpath.org/hg/rel=
ease/icedtea7-forest-2.1/archive/f89009ada191.tar.bz2</a>
Resolving icedtea.classpath.org (icedtea.classpath.org)... 172.104.137.120=
<br />Connecting to icedtea.classpath.org (icedtea.classpath.org)|172.104.1=
37.120|:80... connected.<br />HTTP request sent, awaiting response... 404 N=
ot Found<br />2021-06-07 16:21:05 ERROR 404: Not Found.

ERROR: icedtea7-native-2.1.3-r1.0 do_fetch: Fetcher failure for URL: '<a h=
ref=3D"http://icedtea.classpath.org/hg/release/icedtea7-forest-2.1/archive/=
f89009ada191.tar.bz2;name=3Dopenjdk;unpack=3Dfalse;downloadfilename=3Dopenj=
dk-f89009ada191.tar.bz2">http://icedtea.classpath.org/hg/release/icedtea7-f=
orest-2.1/archive/f89009ada191.tar.bz2;name=3Dopenjdk;unpack=3Dfalse;downlo=
adfilename=3Dopenjdk-f89009ada191.tar.bz2</a>'. Unable to fetch URL from an=
y source.</span></pre>
<p><br />Following this link, seems like the webserver is down. Do you kno=
w any mirror that I can use in the meantime?<br /><br />Thanks,<br />George=
</p>

--YA0U8l3MIy6ujOJ37fea--
