Received: from 3.mo69.mail-out.ovh.net (3.mo69.mail-out.ovh.net [188.165.52.203])
 by mx.groups.io with SMTP id smtpd.web12.4363.1574930902876796437
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Nov 2019 00:48:23 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: 3mdeb.com, ip: 188.165.52.203, mailfrom: maciej.pijanowski@3mdeb.com)
Received: from player786.ha.ovh.net (unknown [10.108.16.184])
	by mo69.mail-out.ovh.net (Postfix) with ESMTP id B5D616A1DF
	for <yocto@lists.yoctoproject.org>; Thu, 28 Nov 2019 09:48:20 +0100 (CET)
Received: from 3mdeb.com (85-222-117-222.dynamic.chello.pl [85.222.117.222])
	(Authenticated sender: maciej.pijanowski@3mdeb.com)
	by player786.ha.ovh.net (Postfix) with ESMTPSA id 7CD26CB8337B
	for <yocto@lists.yoctoproject.org>; Thu, 28 Nov 2019 08:48:19 +0000 (UTC)
Subject: Re: [yocto] Yocto Image Build for NXP i.MX8M
To: yocto@lists.yoctoproject.org
References: <CALSaBR8uTFeGqBeOCDan4Sjo=1Dh+1GnpanKZfB03+j0sSMuuA@mail.gmail.com>
 <CALSaBR_YY=7FnN2ngLwL-gVEiQWYqkFGmCUoPNp1Hi0AaWsOEg@mail.gmail.com>
From: "Maciej Pijanowski" <maciej.pijanowski@3mdeb.com>
Message-ID: <d0a6fc88-051b-381b-a6bd-e7e1973740ac@3mdeb.com>
Date: Thu, 28 Nov 2019 09:48:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <CALSaBR_YY=7FnN2ngLwL-gVEiQWYqkFGmCUoPNp1Hi0AaWsOEg@mail.gmail.com>
X-Ovh-Tracer-Id: 9931563081536843270
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedufedrudeiiedguddviecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjqdffgfeufgfipdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhepuffvfhfhkffffgggjggtsegrtderredtfeejnecuhfhrohhmpeforggtihgvjhcurfhijhgrnhhofihskhhiuceomhgrtghivghjrdhpihhjrghnohifshhkihesfehmuggvsgdrtghomheqnecuffhomhgrihhnpeefmhguvggsrdgtohhmpdihohgtthhophhrohhjvggtthdrohhrghenucfkpheptddrtddrtddrtddpkeehrddvvddvrdduudejrddvvddvnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehplhgrhigvrhejkeeirdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepmhgrtghivghjrdhpihhjrghnohifshhkihesfehmuggvsgdrtghomhdprhgtphhtthhopeihohgtthhosehlihhsthhsrdihohgtthhophhrohhjvggtthdrohhrghenucevlhhushhtvghrufhiiigvpedt
Content-Type: multipart/alternative;
 boundary="------------36DE251E86A5B96A43F3D3A2"
Content-Language: en-US

--------------36DE251E86A5B96A43F3D3A2
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable


On 28.11.2019 09:32, Aj Cit wrote:
>
> I've followed the instruction from the yocto project:
> https://www.yoctoproject.org/docs/3.0/brief-yoctoprojectqs/brief-yoctop=
rojectqs.html=20
>
>
> till the bitbake command. However, I'm getting the following error:
> ERROR: =C2=A0OE-core's config sanity checker detected a potential=20
> misconfiguration.
> =C2=A0 =C2=A0 Either fix the cause of this error or at your own risk di=
sable the=20
> checker (see sanity.conf).
> =C2=A0 =C2=A0 Following is the list of potential problems / advisories:
>
> =C2=A0 =C2=A0 Do not use Bitbake as root.
Isn't this warning message straightforward?
What is your build environment?
Are you using root in fact?
>
>
> On Thu, Nov 28, 2019 at 12:29 PM Aj Cit <aj.ci.01.239@gmail.com=20
> <mailto:aj.ci.01.239@gmail.com>> wrote:
>
>     Hello,
>
>     I'm trying to build a Yocto image for NXP i.MX8M (4 core 64-bit
>     A53s). I am getting some error when I execute the bitmake command.
>
>     I'd appreciate if you could guide me with next steps. Any Guide or
>     url will be=C2=A0helpful.
>
>     Thanks
>     Ajith
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
>
> View/Reply Online (#47444): https://lists.yoctoproject.org/g/yocto/mess=
age/47444
> Mute This Topic: https://lists.yoctoproject.org/mt/63894854/3616795
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  [maciej.pija=
nowski@3mdeb.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-

--=20
Maciej Pijanowski
Embedded Systems Engineer
https://3mdeb.com | @3mdeb_com


--------------36DE251E86A5B96A43F3D3A2
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class=3D"moz-cite-prefix">On 28.11.2019 09:32, Aj Cit wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CALSaBR_YY=3D7FnN2ngLwL-gVEiQWYqkFGmCUoPNp1Hi0AaWsOEg@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr"><br>
        <div>I've followed the instruction from the yocto project:</div>
        <div><a
href=3D"https://www.yoctoproject.org/docs/3.0/brief-yoctoprojectqs/brief-=
yoctoprojectqs.html"
            moz-do-not-send=3D"true">https://www.yoctoproject.org/docs/3.=
0/brief-yoctoprojectqs/brief-yoctoprojectqs.html</a>=C2=A0</div>
        <div><br>
        </div>
        <div>till the bitbake command. However, I'm getting the
          following error:</div>
        <div><span style=3D"color:rgb(255,0,0)">ERROR: =C2=A0OE-core's co=
nfig
            sanity checker detected a potential misconfiguration.</span><=
br
            style=3D"color:rgb(255,0,0)">
          <span style=3D"color:rgb(255,0,0)">=C2=A0 =C2=A0 Either fix the=
 cause of
            this error or at your own risk disable the checker (see
            sanity.conf).</span><br style=3D"color:rgb(255,0,0)">
          <span style=3D"color:rgb(255,0,0)">=C2=A0 =C2=A0 Following is t=
he list of
            potential problems / advisories:</span><br
            style=3D"color:rgb(255,0,0)">
          <br style=3D"color:rgb(255,0,0)">
          <span style=3D"color:rgb(255,0,0)">=C2=A0 =C2=A0 Do not use Bit=
bake as
            root.</span>=C2=A0 <br>
        </div>
      </div>
    </blockquote>
    Isn't this warning message straightforward?<br>
    What is your build environment?<br>
    Are you using root in fact?<br>
    <blockquote type=3D"cite"
cite=3D"mid:CALSaBR_YY=3D7FnN2ngLwL-gVEiQWYqkFGmCUoPNp1Hi0AaWsOEg@mail.gm=
ail.com">
      <div dir=3D"ltr">
        <div>=C2=A0<br>
        </div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Thu, Nov 28, 2019 at 12:=
29
          PM Aj Cit &lt;<a href=3D"mailto:aj.ci.01.239@gmail.com"
            moz-do-not-send=3D"true">aj.ci.01.239@gmail.com</a>&gt; wrote=
:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir=3D"ltr">Hello,
            <div><br>
            </div>
            <div>I'm trying to build a Yocto image for NXP i.MX8M (4
              core 64-bit A53s). I am getting some error when I execute
              the bitmake command.</div>
            <div><br>
            </div>
            <div>I'd appreciate if you could guide me with next steps.
              Any Guide or url will be=C2=A0helpful.</div>
            <div><br>
            </div>
            <div>Thanks</div>
            <div>Ajith</div>
          </div>
        </blockquote>
      </div>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">-=3D-=3D-=3D-=3D-=3D-=3D-=3D=
-=3D-=3D-=3D-=3D-
Links: You receive all messages sent to this group.

View/Reply Online (#47444): <a class=3D"moz-txt-link-freetext" href=3D"ht=
tps://lists.yoctoproject.org/g/yocto/message/47444">https://lists.yoctopr=
oject.org/g/yocto/message/47444</a>
Mute This Topic: <a class=3D"moz-txt-link-freetext" href=3D"https://lists=
.yoctoproject.org/mt/63894854/3616795">https://lists.yoctoproject.org/mt/=
63894854/3616795</a>
Group Owner: <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:yocto+o=
wner@lists.yoctoproject.org">yocto+owner@lists.yoctoproject.org</a>
Unsubscribe: <a class=3D"moz-txt-link-freetext" href=3D"https://lists.yoc=
toproject.org/g/yocto/unsub">https://lists.yoctoproject.org/g/yocto/unsub=
</a>  [<a class=3D"moz-txt-link-abbreviated" href=3D"mailto:maciej.pijano=
wski@3mdeb.com">maciej.pijanowski@3mdeb.com</a>]
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
</pre>
    </blockquote>
    <pre class=3D"moz-signature" cols=3D"72">--=20
Maciej Pijanowski
Embedded Systems Engineer
<a class=3D"moz-txt-link-freetext" href=3D"https://3mdeb.com">https://3md=
eb.com</a> | @3mdeb_com</pre>
  </body>
</html>

--------------36DE251E86A5B96A43F3D3A2--
