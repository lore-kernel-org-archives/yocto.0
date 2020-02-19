Received: from 6.mo68.mail-out.ovh.net (6.mo68.mail-out.ovh.net [46.105.63.100])
 by mx.groups.io with SMTP id smtpd.web10.12267.1582120751479118792
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Feb 2020 05:59:12 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: 3mdeb.com, ip: 46.105.63.100, mailfrom: maciej.pijanowski@3mdeb.com)
Received: from player694.ha.ovh.net (unknown [10.110.171.5])
	by mo68.mail-out.ovh.net (Postfix) with ESMTP id 706F315B178
	for <yocto@lists.yoctoproject.org>; Wed, 19 Feb 2020 14:59:09 +0100 (CET)
Received: from 3mdeb.com (85-222-117-222.dynamic.chello.pl [85.222.117.222])
	(Authenticated sender: maciej.pijanowski@3mdeb.com)
	by player694.ha.ovh.net (Postfix) with ESMTPSA id 96527F7639A0
	for <yocto@lists.yoctoproject.org>; Wed, 19 Feb 2020 13:59:08 +0000 (UTC)
Subject: Re: [yocto] package QA & missing runtime dependency alerting (thud)
To: yocto@lists.yoctoproject.org
References: <657619e39266b23e1fc069691167d17692fa53ec.camel@microsoft.com>
From: "Maciej Pijanowski" <maciej.pijanowski@3mdeb.com>
Message-ID: <21588212-fd68-abcd-4350-36972fd33f54@3mdeb.com>
Date: Wed, 19 Feb 2020 14:59:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <657619e39266b23e1fc069691167d17692fa53ec.camel@microsoft.com>
X-Ovh-Tracer-Id: 4552013327583686150
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedugedrkedtgdehkecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhepuffvfhfhkffffgggjggtsegrtderredtfeejnecuhfhrohhmpeforggtihgvjhcurfhijhgrnhhofihskhhiuceomhgrtghivghjrdhpihhjrghnohifshhkihesfehmuggvsgdrtghomheqnecuffhomhgrihhnpeihohgtthhophhrohhjvggtthdrohhrghdpohhpvghnvghmsggvugguvggurdhorhhgpdefmhguvggsrdgtohhmnecukfhppedtrddtrddtrddtpdekhedrvddvvddruddujedrvddvvdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehplhgrhigvrheileegrdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepmhgrtghivghjrdhpihhjrghnohifshhkihesfehmuggvsgdrtghomhdprhgtphhtthhopeihohgtthhosehlihhsthhsrdihohgtthhophhrohhjvggtthdrohhrgh
Content-Type: multipart/alternative;
 boundary="------------13F553437124125CB2475555"
Content-Language: en-US

--------------13F553437124125CB2475555
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit


On 19.02.2020 13:50, Peter Morrow via Lists.Yoctoproject.Org wrote:
> Hello,
>
> We occasionally see our build fail due to package QA issues,
> specifically:
>
> ERROR: gawk-4.2.1-r0 do_package_qa: QA Issue:
> /usr/lib/gawk/ptest/test/fcall_exit.awk contained in package gawk-ptest
> requires /bin/awk, but no providers found in RDEPENDS_gawk-ptest?
> [file-rdeps],
>
> I'm wondering how yocto has made the decision that "/bin/awk" is a
> runtime dependency for gawk-ptest (it is, so this is good).  Does
> yocto read /usr/lib/gawk/ptest/test/fcall_exit.awk looking for anything
> that matches on a shbang then alert us to this as a missing RDEPENDS?
Yes, it does look at the sheabangs of the scripts. Please refer to the 
manual
and the insane.bbclass imeplementation
https://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#ref-classes-insane
>
> I think this is what is happening but cannot see this in the
> documentation error.  Something to back this hunch up:
>
> http://lists.openembedded.org/pipermail/openembedded-core/2016-November/128419.html
>
> I'm about to send patches upstream to gawk to remove some more shbangs
> from awk scripts and thus would like to check the yocto behaviour
> before I do so.
>
> Thanks,
> Peter.
>
>
>
>
> 

-- 
Maciej Pijanowski
Embedded Systems Engineer
GPG: 9963C36AAC3B2B46
https://3mdeb.com | @3mdeb_com


--------------13F553437124125CB2475555
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 19.02.2020 13:50, Peter Morrow via
      Lists.Yoctoproject.Org wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:657619e39266b23e1fc069691167d17692fa53ec.camel@microsoft.com">
      <pre class="moz-quote-pre" wrap="">Hello,

We occasionally see our build fail due to package QA issues,
specifically:

ERROR: gawk-4.2.1-r0 do_package_qa: QA Issue:
/usr/lib/gawk/ptest/test/fcall_exit.awk contained in package gawk-ptest 
requires /bin/awk, but no providers found in RDEPENDS_gawk-ptest?
[file-rdeps], 

I'm wondering how yocto has made the decision that "/bin/awk" is a
runtime dependency for gawk-ptest (it is, so this is good).  Does
yocto read /usr/lib/gawk/ptest/test/fcall_exit.awk looking for anything
that matches on a shbang then alert us to this as a missing RDEPENDS?</pre>
    </blockquote>
    Yes, it does look at the sheabangs of the scripts. Please refer to
    the manual<br>
    and the insane.bbclass imeplementation<br>
<a class="moz-txt-link-freetext" href="https://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#ref-classes-insane">https://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#ref-classes-insane</a><br>
    <blockquote type="cite"
      cite="mid:657619e39266b23e1fc069691167d17692fa53ec.camel@microsoft.com">
      <pre class="moz-quote-pre" wrap="">

I think this is what is happening but cannot see this in the
documentation error.  Something to back this hunch up:

<a class="moz-txt-link-freetext" href="http://lists.openembedded.org/pipermail/openembedded-core/2016-November/128419.html">http://lists.openembedded.org/pipermail/openembedded-core/2016-November/128419.html</a>

I'm about to send patches upstream to gawk to remove some more shbangs
from awk scripts and thus would like to check the yocto behaviour
before I do so.

Thanks,
Peter.



</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">
</pre>
    </blockquote>
    <pre class="moz-signature" cols="72">-- 
Maciej Pijanowski
Embedded Systems Engineer
GPG: 9963C36AAC3B2B46
<a class="moz-txt-link-freetext" href="https://3mdeb.com">https://3mdeb.com</a> | @3mdeb_com</pre>
  </body>
</html>

--------------13F553437124125CB2475555--
