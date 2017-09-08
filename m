Return-Path: <mircea.gliga@vitheia.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C248EE00CD5; Fri,  8 Sep 2017 01:28:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 2442 seconds by postgrey-1.32 at yocto-www;
	Fri, 08 Sep 2017 01:28:26 PDT
Received: from zeus.integrasoft.ro (zeus.integrasoft.ro [193.231.162.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF601E00CCB
	for <yocto@yoctoproject.org>; Fri,  8 Sep 2017 01:28:26 -0700 (PDT)
Received: from [193.231.162.34] (echelon.integrasoft.ro [193.231.162.34])
	(authenticated bits=0)
	by zeus.integrasoft.ro (8.14.7/8.14.7) with ESMTP id v887lgh3012063
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-SHA bits=128 verify=NO)
	for <yocto@yoctoproject.org>; Fri, 8 Sep 2017 10:47:42 +0300
From: Mircea Gliga <mircea.gliga@vitheia.com>
To: yocto@yoctoproject.org
Message-ID: <d0148a6a-9eac-1f8a-6bd5-d7bd967c82eb@vitheia.com>
Date: Fri, 8 Sep 2017 10:47:42 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
Subject: dnsmasq init script typo
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
X-List-Received-Date: Fri, 08 Sep 2017 08:28:29 -0000
Content-Type: multipart/alternative;
	boundary="------------1519ADEAC213091796CC03B1"
Content-Language: en-US

--------------1519ADEAC213091796CC03B1
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi

I think there is a problem in the dnsmasq init script related to the pidfile
|

test  -z"${PIDFILE}"  &&  PIFILE="/run/dnsmasq.pid"

|
The script defines a variable PIFILE, notice the missing "D" from PID. 
And then it doesn't use that variable anymore.
It only uses the PIDFILE one.
So, if you run /etc/init.d/dnsmasq status you get in trouble because of 
this line:

|

PID=`cat${PIDFILE}`

|

Also the script doesn't handle the situation when the the pidfile is 
also specified in the dnsmasq.conf file - the daemon creates the pidfile 
in the location specified in the dnsmaq.conf file.
But, this is done for the `no-resolv` entry in the conf file.

This is the script in question:
http://cgit.openembedded.org/meta-openembedded/tree/meta-networking/recipes-support/dnsmasq/files/init?h=krogoth#n19

Best regards
Mircea
||

--------------1519ADEAC213091796CC03B1
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    Hi<br>
    <br>
    I think there is a problem in the dnsmasq init script related to the
    pidfile<br>
    <code>
      <pre><span class="nb"> test</span> -z <span class="s2">"</span><span class="si">${</span><span class="nv">PIDFILE</span><span class="si">}</span><span class="s2">"</span> <span class="o">&amp;&amp;</span> <span class="nv">PIFILE</span><span class="o">=</span><span class="s2">"/run/dnsmasq.pid"</span></pre>
    </code><br>
    The script defines a variable PIFILE, notice the missing "D" from
    PID. And then it doesn't use that variable anymore.<br>
    It only uses the PIDFILE one.<br>
    So, if you run /etc/init.d/dnsmasq status you get in trouble because
    of this line:<br>
    <pre><code><pre><span class="nv">  PID</span><span class="o">=</span><span class="sb">`</span>cat <span class="si">${</span><span class="nv">PIDFILE</span><span class="si">}</span><span class="sb">`</span></pre></code></pre>
    Also the script doesn't handle the situation when the the pidfile is
    also specified in the dnsmasq.conf file - the daemon creates the
    pidfile in the location specified in the dnsmaq.conf file.<br>
    But, this is done for the `no-resolv` entry in the conf file.<br>
    <br>
    This is the script in question:<br>
<a class="moz-txt-link-freetext" href="http://cgit.openembedded.org/meta-openembedded/tree/meta-networking/recipes-support/dnsmasq/files/init?h=krogoth#n19">http://cgit.openembedded.org/meta-openembedded/tree/meta-networking/recipes-support/dnsmasq/files/init?h=krogoth#n19</a><br>
    <br>
    Best regards<br>
    Mircea<br>
    <code></code>
  </body>
</html>

--------------1519ADEAC213091796CC03B1--
