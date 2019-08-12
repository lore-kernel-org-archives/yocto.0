Return-Path: <maciej.pijanowski@3mdeb.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CAF6AE00DA7; Sun, 11 Aug 2019 22:58:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [46.105.75.45 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from 9.mo178.mail-out.ovh.net (9.mo178.mail-out.ovh.net
	[46.105.75.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2649E00D7E
	for <yocto@yoctoproject.org>; Sun, 11 Aug 2019 22:58:50 -0700 (PDT)
Received: from player739.ha.ovh.net (unknown [10.108.57.44])
	by mo178.mail-out.ovh.net (Postfix) with ESMTP id CF01E7458C
	for <yocto@yoctoproject.org>; Mon, 12 Aug 2019 07:58:48 +0200 (CEST)
Received: from 3mdeb.com (85-222-117-222.dynamic.chello.pl [85.222.117.222])
	(Authenticated sender: maciej.pijanowski@3mdeb.com)
	by player739.ha.ovh.net (Postfix) with ESMTPSA id 606ED8E77379;
	Mon, 12 Aug 2019 05:58:47 +0000 (UTC)
To: www <ouyangxuan10@163.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <b9d05c.477a.16c7a667413.Coremail.ouyangxuan10@163.com>
	<31226eab-9d1d-20de-0edf-83100afb6919@3mdeb.com>
	<5d880543.54cd.16c8463a940.Coremail.ouyangxuan10@163.com>
From: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>
Openpgp: preference=signencrypt
Autocrypt: addr=maciej.pijanowski@3mdeb.com; keydata=
	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
	0f2bcrTp9w==
Message-ID: <758501ea-bd7c-8fb0-b5f2-82b6e22da123@3mdeb.com>
Date: Mon, 12 Aug 2019 07:58:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <5d880543.54cd.16c8463a940.Coremail.ouyangxuan10@163.com>
X-Ovh-Tracer-Id: 6755401996709545
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduvddruddvfedguddtfecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecu
Subject: Re: ask a question about filesystem in yocto
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
X-List-Received-Date: Mon, 12 Aug 2019 05:58:52 -0000
X-Groupsio-MsgNum: 46262
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="wbqlh5eTyDUx9YWHg5SwNEVx45yxkiOHL"

--wbqlh5eTyDUx9YWHg5SwNEVx45yxkiOHL
Content-Type: multipart/mixed; boundary="ChlulEugO3AFb7ZrCdf5I7bSamoqyBgfa";
 protected-headers="v1"
From: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>
To: www <ouyangxuan10@163.com>,
 "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <758501ea-bd7c-8fb0-b5f2-82b6e22da123@3mdeb.com>
Subject: Re: [yocto] ask a question about filesystem in yocto
References: <b9d05c.477a.16c7a667413.Coremail.ouyangxuan10@163.com>
 <31226eab-9d1d-20de-0edf-83100afb6919@3mdeb.com>
 <5d880543.54cd.16c8463a940.Coremail.ouyangxuan10@163.com>
In-Reply-To: <5d880543.54cd.16c8463a940.Coremail.ouyangxuan10@163.com>

--ChlulEugO3AFb7ZrCdf5I7bSamoqyBgfa
Content-Type: multipart/alternative;
 boundary="------------539D1DF9196A05726E989B80"
Content-Language: en-US

--------------539D1DF9196A05726E989B80
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable


On 12.08.2019 07:53, www wrote:
>
> Hi Maciej Pijanowski=EF=BC=8C
Hi,
>
> Thank you for your kind help. I'll try it. Thank you.

Please reply to the mailing list as well when using the public mailings
lists,
so others can see the discussion.

>
> thanks,
> Byron
>
>
>
>
> =E5=9C=A8 2019-08-10 16:26:19=EF=BC=8C"Maciej Pijanowski"
> <maciej.pijanowski@3mdeb.com> =E5=86=99=E9=81=93=EF=BC=9A
>
>
>     On 10.08.2019 09:20, www wrote:
>>     Dear all,
>     Hi,
>>
>>     I'm new learner and user of yocto. When I used it, I encountered
>>     a problem. I don't know how to resolve it, so I ask for help.
>>     the problem is how can I create a new partition on yocto? if I
>>     have a package named webui, it can be generate several execute
>>     files and configuration files, the execute files will be install
>>     into filesystem, such as "/usr/bin", and be packed to rofs. but I
>>     don't want pack the configuration files=C2=A0 to rofs, and I want
>>     create a new image and the image will be a partition of the
>>     global image, and pack the configuration file to it, when the
>>     system start running, it can be=C2=A0=C2=A0separate=C2=A0 =C2=A0 m=
ount to the filesystem.
>>
>>     When pack to rofs image, I don't know how to separate the execute
>>     file and configuration file in the webui package and pack to
>>     different part.=C2=A0Can someone help me to tell me how to solve t=
his
>>     problem?
>     Please take a look at wic:
>     https://www.yoctoproject.org/docs/2.4.2/dev-manual/dev-manual.html#=
creating-partitioned-images-using-wic
>
>     You can for example exclude some subdirectory from main rootfs
>     partition and place it onto another partition instead.
>
>     Take a look at following wic flags:
>     --rootfs-dir
>     --exclude-path
>
>     You can define subdirs to split in local.conf or another config
>     file (e.g. distro config) using the WIC_CREATE_EXTRA_ARGS
>     and flags as: --rootfs-dir rootfs-main=3D${IMAGE_ROOTFS}
>>
>>     I am looking forward to your reply.
>>
>>     thanks=EF=BC=8C
>>     Byron
>>
>>
>>     =C2=A0
>>
>>
>     --=20
>     Maciej Pijanowski
>     Embedded Systems Engineer
>     https://3mdeb.com | @3mdeb_com
>
>
>
> =C2=A0
>
--=20
Maciej Pijanowski
Embedded Systems Engineer
https://3mdeb.com | @3mdeb_com


--------------539D1DF9196A05726E989B80
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body text=3D"#000000" bgcolor=3D"#FFFFFF">
    <p><br>
    </p>
    <div class=3D"moz-cite-prefix">On 12.08.2019 07:53, www wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:5d880543.54cd.16c8463a940.Coremail.ouyangxuan10@163.com=
">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div
        style=3D"line-height:1.7;color:#000000;font-size:14px;font-family=
:Arial"><br>
        <div>Hi Maciej Pijanowski=EF=BC=8C</div>
      </div>
    </blockquote>
    Hi,<br>
    <blockquote type=3D"cite"
      cite=3D"mid:5d880543.54cd.16c8463a940.Coremail.ouyangxuan10@163.com=
">
      <div
        style=3D"line-height:1.7;color:#000000;font-size:14px;font-family=
:Arial">
        <div><br>
        </div>
        <div>Thank you for your kind help. I'll try it. Thank you.</div>
      </div>
    </blockquote>
    <p>Please reply to the mailing list as well when using the public
      mailings lists,<br>
      so others can see the discussion.<br>
    </p>
    <blockquote type=3D"cite"
      cite=3D"mid:5d880543.54cd.16c8463a940.Coremail.ouyangxuan10@163.com=
">
      <div
        style=3D"line-height:1.7;color:#000000;font-size:14px;font-family=
:Arial">
        <div><br>
        </div>
        <div>thanks,</div>
        <div>Byron</div>
        <br>
        <br>
        <br>
        <br>
        =E5=9C=A8 2019-08-10 16:26:19=EF=BC=8C"Maciej Pijanowski"
        <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:maciej.pijanows=
ki@3mdeb.com">&lt;maciej.pijanowski@3mdeb.com&gt;</a> =E5=86=99=E9=81=93=EF=
=BC=9A<br>
        <blockquote id=3D"isReplyContent" style=3D"PADDING-LEFT: 1ex;
          MARGIN: 0px 0px 0px 0.8ex; BORDER-LEFT: #ccc 1px solid">
          <p><br>
          </p>
          <div class=3D"moz-cite-prefix">On 10.08.2019 09:20, www wrote:<=
br>
          </div>
          <blockquote type=3D"cite"
            cite=3D"mid:b9d05c.477a.16c7a667413.Coremail.ouyangxuan10@163=
=2Ecom">
            <div
              style=3D"line-height:1.7;color:#000000;font-size:14px;font-=
family:Arial">
              <div>Dear all,</div>
            </div>
          </blockquote>
          Hi,<br>
          <blockquote type=3D"cite"
            cite=3D"mid:b9d05c.477a.16c7a667413.Coremail.ouyangxuan10@163=
=2Ecom">
            <div
              style=3D"line-height:1.7;color:#000000;font-size:14px;font-=
family:Arial">
              <div><br>
              </div>
              <div>I'm new learner and user of yocto. When I used it, I
                encountered a problem. I don't know how to resolve it,
                so I ask for help.</div>
              <div>the problem is how can I create a new partition on
                yocto? if I have a package named webui, it can be
                generate several execute files and configuration files,
                the execute files will be install into filesystem, such
                as "/usr/bin", and be packed to rofs. but I don't want
                pack the configuration files=C2=A0 to rofs, and I want cr=
eate
                a new image and the image will be a partition of the
                global image, and pack the configuration file to it,
                when the system start running, it can be=C2=A0=C2=A0<span=

                  style=3D"background-color: rgb(67, 148, 255); color:
                  rgb(255, 255, 255); font-family: Arial, &quot;PingFang
                  SC&quot;, &quot;Hiragino Sans GB&quot;, STHeiti,
                  &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro
                  Hei&quot;, sans-serif; font-size: 13px;">separate</span=
>=C2=A0
                =C2=A0 mount to the filesystem.</div>
              <div><br>
              </div>
              <div>When pack to rofs image, I don't know how to separate
                the execute file and configuration file in the webui
                package and pack to different part.=C2=A0Can someone help=
 me
                to tell me how to solve this problem?</div>
            </div>
          </blockquote>
          Please take a look at wic:
          <a class=3D"moz-txt-link-freetext"
href=3D"https://www.yoctoproject.org/docs/2.4.2/dev-manual/dev-manual.htm=
l#creating-partitioned-images-using-wic"
            moz-do-not-send=3D"true">https://www.yoctoproject.org/docs/2.=
4.2/dev-manual/dev-manual.html#creating-partitioned-images-using-wic</a><=
br>
          <br>
          You can for example exclude some subdirectory from main rootfs
          partition and place it onto another partition instead.<br>
          <br>
          Take a look at following wic flags:<br>
          --rootfs-dir<br>
          --exclude-path<br>
          <br>
          You can define subdirs to split in local.conf or another
          config file (e.g. distro config) using the <span
            class=3D"pl-en">WIC_CREATE_EXTRA_ARGS <br>
            and </span><span class=3D"pl-en"> </span><span class=3D"pl-s1=
">flags
            as: --</span><span class=3D"pl-en">rootfs</span><span
            class=3D"pl-s1">-</span><span class=3D"pl-en">dir rootfs</spa=
n><span
            class=3D"pl-s1">-</span><span class=3D"pl-en">main=3D</span><=
span
            class=3D"pl-en">${IMAGE_ROOTFS}</span><br>
          <span class=3D"pl-en"></span>
          <blockquote type=3D"cite"
            cite=3D"mid:b9d05c.477a.16c7a667413.Coremail.ouyangxuan10@163=
=2Ecom">
            <div
              style=3D"line-height:1.7;color:#000000;font-size:14px;font-=
family:Arial"><br>
              <div>I am looking forward to your reply.</div>
              <div><br>
              </div>
              <div>thanks=EF=BC=8C</div>
              <div>Byron</div>
            </div>
            <br>
            <br>
            <span title=3D"neteasefooter">
              <p>=C2=A0</p>
            </span><br>
            <fieldset class=3D"mimeAttachmentHeader"></fieldset>
          </blockquote>
          <pre class=3D"moz-signature" cols=3D"72">--=20
Maciej Pijanowski
Embedded Systems Engineer
<a class=3D"moz-txt-link-freetext" href=3D"https://3mdeb.com" moz-do-not-=
send=3D"true">https://3mdeb.com</a> | @3mdeb_com</pre>
        </blockquote>
      </div>
      <br>
      <br>
      <span title=3D"neteasefooter">
        <p>=C2=A0</p>
      </span>
    </blockquote>
    <pre class=3D"moz-signature" cols=3D"72">--=20
Maciej Pijanowski
Embedded Systems Engineer
<a class=3D"moz-txt-link-freetext" href=3D"https://3mdeb.com">https://3md=
eb.com</a> | @3mdeb_com</pre>
  </body>
</html>

--------------539D1DF9196A05726E989B80--

--ChlulEugO3AFb7ZrCdf5I7bSamoqyBgfa--

--wbqlh5eTyDUx9YWHg5SwNEVx45yxkiOHL
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJdUQAWAAoJEPFAHS4cyxnvUBwP/2zF8HbriHruSvnQada5ZMB+
b/iw83m6sq1tTg4XKWHSBD112xzt2yftOjjAxe61OqyH6HNqGti9H4pzJRHwFzuu
kbdO3ESMXL2pVVkYxsWR5Q5Cya/6Rb3YXYTy2dMCyz2QSro0bYB0KOH6m88EyKLj
fIsvjcE5RtfX8loxvDuBLXnhworgYpxtZvynakkhJ+TpPl0SAOjI/flQLUhLMmuj
WnYOvQuju1xlH8QVlCsgYgDqHYD1EY6XscJniDGIJL5ENkqPal3h45bgECsGfB6N
WwJQJpRQ7h3jTCsFMHSYlvizZ4fQxJC4KlnLkKWoT0bqKG7WDh6lh+RvMgIaLERQ
53jpvgFHDkUporKoDR54kYGjsuxN52fllImoAeEpDbl9l2GDMo/8er8sGXlHJi1F
XG7hw2vkpxf9TUWS7nLiGv6+Sju6K0HCDDMtYLvFSLulks/bxdmj+UkUuTF52cG7
E3S3elOI4ZfCgbyiIXv1yYe5o5czjyUj+mnLdQLsfA7OdKOmYIgXJbfzInp4ImQN
IUun7BIdec2u8qjP7iY6JSFENRjxFSrEQaLY+bs1CodVZFDRVGImpBoihQqzxey4
kAMYpwHyskBMoMZVqrvbyEPq3QMJXzunN5Y55QsXDJQPQ5ONrUIKhEYCPmar26fZ
OIR1StPhecfz85eeVjxW
=zL3L
-----END PGP SIGNATURE-----

--wbqlh5eTyDUx9YWHg5SwNEVx45yxkiOHL--
