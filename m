Return-Path: <stefano.cordibella@edalab.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6DB8FE00931; Wed, 23 Mar 2016 02:04:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,T_FILL_THIS_FORM_SHORT autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [62.149.158.134 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
	*      information
Received: from smtpcmd04134.aruba.it (smtpcmd04134.aruba.it [62.149.158.134])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 355DEE00920
	for <yocto@yoctoproject.org>; Wed, 23 Mar 2016 02:03:58 -0700 (PDT)
Received: from [157.27.147.163] ([157.27.147.163])
	by smtpcmd04.ad.aruba.it with bizsmtp
	id ZM3t1s00x3XlD4V01M3uTW; Wed, 23 Mar 2016 10:03:56 +0100
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <56F158B7.7020300@edalab.it>
	<8582586.SaQgZAliaG@peggleto-mobl.ger.corp.intel.com>
From: Stefano Cordibella <stefano.cordibella@edalab.it>
Message-ID: <56F25BF8.9060209@edalab.it>
Date: Wed, 23 Mar 2016 10:03:52 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.6.0
MIME-Version: 1.0
In-Reply-To: <8582586.SaQgZAliaG@peggleto-mobl.ger.corp.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Append a pkg_postinst script
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
X-List-Received-Date: Wed, 23 Mar 2016 09:04:02 -0000
Content-Type: multipart/alternative;
	boundary="------------020208030904090008060601"

--------------020208030904090008060601
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Thank you Paul for your answer.

I thought that only do_<taskname> could be _append ed or _prepend ed.

Have a nice day,
Stefano.

On 22/03/2016 21:21, Paul Eggleton wrote:
> Hi Stefano,
>
> On Tue, 22 Mar 2016 15:37:43 Stefano Cordibella wrote:
>>       just a simple question: what is the best way to append a
>> pkg_postinst script?
>> I haven't found any information about a pkg_postint_${PN}_append () ...
>> I extended a recipe, via bbappend, that already defined a
>> pkg_postinst_${PN} ()...
> pkg_postint_${PN}_append should work just fine.
>
> Cheers,
> Paul
>


-- 
*Stefano Cordibella*
EDALab s.r.l. - Networked Embedded Systems

Strada Le Grazie, 15 - 37134 Verona - Italy
email : stefano.cordibella@edalab.it
skype : stefano.cordibella
tel. : +39 045 802 70 85
web : www.edalab.it

--------------020208030904090008060601
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <div class="moz-cite-prefix">Thank you Paul for your answer.<br>
      <br>
      I thought that only do_&lt;taskname&gt; could be _append ed or
      _prepend ed.<br>
      <br>
      Have a nice day,<br>
      Stefano.<br>
      <br>
      On 22/03/2016 21:21, Paul Eggleton wrote:<br>
    </div>
    <blockquote
      cite="mid:8582586.SaQgZAliaG@peggleto-mobl.ger.corp.intel.com"
      type="cite">
      <pre wrap="">Hi Stefano,

On Tue, 22 Mar 2016 15:37:43 Stefano Cordibella wrote:
</pre>
      <blockquote type="cite">
        <pre wrap="">     just a simple question: what is the best way to append a
pkg_postinst script?
I haven't found any information about a pkg_postint_${PN}_append () ...
I extended a recipe, via bbappend, that already defined a
pkg_postinst_${PN} ()...
</pre>
      </blockquote>
      <pre wrap="">
pkg_postint_${PN}_append should work just fine.

Cheers,
Paul

</pre>
    </blockquote>
    <br>
    <br>
    <div class="moz-signature">-- <br>
      <meta http-equiv="content-type" content="text/html;
        charset=windows-1252">
      <title></title>
      <div class="moz-signature"> <b>Stefano Cordibella</b><br>
        EDALab s.r.l. - Networked Embedded Systems<br>
        <br>
        Strada Le Grazie, 15 - 37134 Verona - Italy<br>
        email : <a class="moz-txt-link-abbreviated" href="mailto:stefano.cordibella@edalab.it">stefano.cordibella@edalab.it</a><br>
        skype : stefano.cordibella<br>
        tel. : +39 045 802 70 85<br>
        web : <a class="moz-txt-link-abbreviated" href="http://www.edalab.it">www.edalab.it</a><br>
      </div>
    </div>
  </body>
</html>

--------------020208030904090008060601--
