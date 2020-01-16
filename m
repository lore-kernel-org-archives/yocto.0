Received: from 7.mo178.mail-out.ovh.net (7.mo178.mail-out.ovh.net [46.105.58.91])
 by mx.groups.io with SMTP id smtpd.web10.7498.1579171444937823740
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 Jan 2020 02:44:05 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: 3mdeb.com, ip: 46.105.58.91, mailfrom: maciej.pijanowski@3mdeb.com)
Received: from player794.ha.ovh.net (unknown [10.109.143.24])
	by mo178.mail-out.ovh.net (Postfix) with ESMTP id 4A0798CBBD
	for <yocto@lists.yoctoproject.org>; Thu, 16 Jan 2020 11:44:03 +0100 (CET)
Received: from 3mdeb.com (85-222-117-222.dynamic.chello.pl [85.222.117.222])
	(Authenticated sender: maciej.pijanowski@3mdeb.com)
	by player794.ha.ovh.net (Postfix) with ESMTPSA id 386E1B47684E
	for <yocto@lists.yoctoproject.org>; Thu, 16 Jan 2020 10:44:01 +0000 (UTC)
Subject: Re: [yocto] Building multipartition images
To: yocto@lists.yoctoproject.org
References: <0eeb62cad66cfc836a47e9cbdd878fa16db90602.camel@holoplot.com>
From: "Maciej Pijanowski" <maciej.pijanowski@3mdeb.com>
Message-ID: <15fe80e0-597e-a62a-bc7c-99121c86f8d7@3mdeb.com>
Date: Thu, 16 Jan 2020 11:44:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <0eeb62cad66cfc836a47e9cbdd878fa16db90602.camel@holoplot.com>
X-Ovh-Tracer-Id: 4499658980478299654
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedugedrtdehgddukecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhepuffvfhfhkffffgggjggtsegrtderredtfeejnecuhfhrohhmpeforggtihgvjhcurfhijhgrnhhofihskhhiuceomhgrtghivghjrdhpihhjrghnohifshhkihesfehmuggvsgdrtghomheqnecuffhomhgrihhnpehgihhthhhusgdrtghomhdphihotghtohhprhhojhgvtghtrdhorhhgpdefmhguvggsrdgtohhmnecukfhppedtrddtrddtrddtpdekhedrvddvvddruddujedrvddvvdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrjeelgedrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehmrggtihgvjhdrphhijhgrnhhofihskhhiseefmhguvggsrdgtohhmpdhrtghpthhtohephihotghtoheslhhishhtshdrhihotghtohhprhhojhgvtghtrdhorhhgnecuvehluhhsthgvrhfuihiivgeptd
Content-Type: multipart/alternative;
 boundary="------------7B6204405397787AF6F815C9"
Content-Language: en-US

--------------7B6204405397787AF6F815C9
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit


On 16.01.2020 11:41, morgan.hill@holoplot.com wrote:
> Hello all,
>
> I would link to have a read only / partition and a writeable /etc
> partition. The pain point I'm running into is populating /etc from the
> rootfs. The quick solution is to script the creation of disk images
> from the rootfs, outside the bitbake tool chain, however this seems non
> ideal.
>
> I understand that there is the possibility to create partitions using
> wks files. The pain point with wks is that the if one specifies rootfs
> as the source of both / and /etc partitions both will be populated with
> the completed rootfs. The ideal scenario would be that the partitions
> are created and mounted then the rootfs is copied on top and the fstab
> is installed (as in the installation of other GNU/Linux distributions).
>
> If anyone has solved or knows how to solve this problem neatly in an
> image recipe for example some tips would be much appreciated.
Using wic you can exclude one directory from the partition and install
it into another partition. Example I've used some time ago:
https://github.com/3mdeb/meta-rte/blob/master/wic/sunxi-mmc-spl.wks#L4
>
> Morgan Hill
>
>
> 

-- 
Maciej Pijanowski
Embedded Systems Engineer
GPG: F1401D2E1CCB19EF
https://3mdeb.com | @3mdeb_com


--------------7B6204405397787AF6F815C9
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 16.01.2020 11:41,
      <a class="moz-txt-link-abbreviated" href="mailto:morgan.hill@holoplot.com">morgan.hill@holoplot.com</a> wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:0eeb62cad66cfc836a47e9cbdd878fa16db90602.camel@holoplot.com">
      <pre class="moz-quote-pre" wrap="">Hello all,

I would link to have a read only / partition and a writeable /etc
partition. The pain point I'm running into is populating /etc from the
rootfs. The quick solution is to script the creation of disk images
from the rootfs, outside the bitbake tool chain, however this seems non
ideal.

I understand that there is the possibility to create partitions using
wks files. The pain point with wks is that the if one specifies rootfs
as the source of both / and /etc partitions both will be populated with
the completed rootfs. The ideal scenario would be that the partitions
are created and mounted then the rootfs is copied on top and the fstab
is installed (as in the installation of other GNU/Linux distributions).

If anyone has solved or knows how to solve this problem neatly in an
image recipe for example some tips would be much appreciated.</pre>
    </blockquote>
    Using wic you can exclude one directory from the partition and
    install<br>
    it into another partition. Example I've used some time ago:<br>
<a class="moz-txt-link-freetext" href="https://github.com/3mdeb/meta-rte/blob/master/wic/sunxi-mmc-spl.wks#L4">https://github.com/3mdeb/meta-rte/blob/master/wic/sunxi-mmc-spl.wks#L4</a><br>
    <blockquote type="cite"
      cite="mid:0eeb62cad66cfc836a47e9cbdd878fa16db90602.camel@holoplot.com">
      <pre class="moz-quote-pre" wrap="">

Morgan Hill

</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">
</pre>
    </blockquote>
    <pre class="moz-signature" cols="72">-- 
Maciej Pijanowski
Embedded Systems Engineer
GPG: F1401D2E1CCB19EF
<a class="moz-txt-link-freetext" href="https://3mdeb.com">https://3mdeb.com</a> | @3mdeb_com</pre>
  </body>
</html>

--------------7B6204405397787AF6F815C9--
