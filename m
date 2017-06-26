Return-Path: <jakob.hasse@smart-home-technology.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 41B0BE0084A; Mon, 26 Jun 2017 12:07:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [217.26.49.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mxout012.mail.hostpoint.ch (mxout012.mail.hostpoint.ch
	[217.26.49.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC591E0048B
	for <yocto@yoctoproject.org>; Mon, 26 Jun 2017 12:07:26 -0700 (PDT)
Received: from [10.0.2.46] (helo=asmtp013.mail.hostpoint.ch)
	by mxout012.mail.hostpoint.ch with esmtp (Exim 4.89 (FreeBSD))
	(envelope-from <jakob.hasse@smart-home-technology.ch>)
	id 1dPZM4-000O9X-N2; Mon, 26 Jun 2017 21:07:24 +0200
Received: from [2a02:168:69ac:0:d02a:89e0:1e0c:35c8]
	by asmtp013.mail.hostpoint.ch with esmtpa (Exim 4.89 (FreeBSD))
	(envelope-from <jakob.hasse@smart-home-technology.ch>)
	id 1dPZM4-0000dS-Kb; Mon, 26 Jun 2017 21:07:24 +0200
X-Authenticated-Sender-Id: jakob.hasse@smart-home-technology.ch
To: Khem Raj <raj.khem@gmail.com>
References: <44f0509d-42e0-35ed-529f-0edf52b7671c@smart-home-technology.ch>
	<CAMKF1srxWL4BOwy8_j05hf2UTSM8Z764jD--X37S36pAGg65bA@mail.gmail.com>
From: Jakob Hasse <jakob.hasse@smart-home-technology.ch>
Message-ID: <edf13bc9-fc9e-7d4d-3097-4edac9ca05bc@smart-home-technology.ch>
Date: Mon, 26 Jun 2017 21:07:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <CAMKF1srxWL4BOwy8_j05hf2UTSM8Z764jD--X37S36pAGg65bA@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: openssl/Certificate problems when running simple MS IoT Hub sample C application
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
X-List-Received-Date: Mon, 26 Jun 2017 19:07:29 -0000
Content-Type: multipart/alternative;
	boundary="------------B225E784F56FB1738550C833"
Content-Language: de-DE

--------------B225E784F56FB1738550C833
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hello Khem,

thanks for the answer. I'm pretty sure now that it is an ssl problem 
(see below).

On 26.06.2017 16:28, Khem Raj wrote:
> On Sun, Jun 25, 2017 at 11:35 PM, Jakob Hasse
> <jakob.hasse@smart-home-technology.ch> wrote:
>> Hello,
>>
>> I'm trying to  run the Mircosoft Azure IoT hub mqtt example
>> (iothub_client_sample_amqp or simliar) of the C SDK on yocto
>> (https://github.com/Azure/azure-iot-sdk-c).
>> On my Ubuntu host machine, everything compiles and works fine, the
>> application connects to the azure server and sends messages.
>> In Yocto, I get errors after compiling the whole SDK with all examples, but
>> the mqtt example is already there, so I assume it's correct. Furthermore, I
>> could compile it using Intel's meta-iot-cloud layer and only taking the
>> example application itself into my own layer.
> I would suggest to fix all compile errors. If you need support please share
> your compile errors here, there might be interesting for people here.
As I said, the application also compiled with the meta-iot-cloud layer 
without errors. Anyway, here are the errors when compiling with the SDK:

[ 67%] Building C object 
iothub_client/samples/iothub_client_sample_mqtt_dm/CMakeFiles/iothub_client_sample_mqtt_dm.dir/iothub_client_sample_mqtt_dm.c.o
cc1: error: include location "/usr/include/azureiot" is unsafe for 
cross-compilation [-Werror=poison-system-directories]
[ 68%] Building C object uamqp/CMakeFiles/uamqp.dir/src/session.c.o
[ 69%] Building C object 
iothub_client/samples/iothub_client_sample_mqtt_dm/CMakeFiles/iothub_client_sample_mqtt_dm.dir/pi_device/pi.c.o
cc1: error: include location "/usr/include/azureiot" is unsafe for 
cross-compilation [-Werror=poison-system-directories]
cc1: all warnings being treated as errors
iothub_client/samples/iothub_client_sample_mqtt_dm/CMakeFiles/iothub_client_sample_mqtt_dm.dir/build.make:86: 
recipe for target 
'iothub_client/samples/iothub_client_sample_mqtt_dm/CMakeFiles/iothub_client_sample_mqtt_dm.dir/pi_device/pi.c.o' 
failed
make[2]: *** 
[iothub_client/samples/iothub_client_sample_mqtt_dm/CMakeFiles/iothub_client_sample_mqtt_dm.dir/pi_device/pi.c.o] 
Error 1
make[2]: *** Waiting for unfinished jobs....
Scanning dependencies of target simplesample_http
[ 70%] Building C object 
serializer/samples/simplesample_http/CMakeFiles/simplesample_http.dir/simplesample_http.c.o
cc1: all warnings being treated as errors
iothub_client/samples/iothub_client_sample_mqtt_dm/CMakeFiles/iothub_client_sample_mqtt_dm.dir/build.make:62: 
recipe for target 
'iothub_client/samples/iothub_client_sample_mqtt_dm/CMakeFiles/iothub_client_sample_mqtt_dm.dir/iothub_client_sample_mqtt_dm.c.o' 
failed
make[2]: *** 
[iothub_client/samples/iothub_client_sample_mqtt_dm/CMakeFiles/iothub_client_sample_mqtt_dm.dir/iothub_client_sample_mqtt_dm.c.o] 
Error 1
CMakeFiles/Makefile2:2288: recipe for target 
'iothub_client/samples/iothub_client_sample_mqtt_dm/CMakeFiles/iothub_client_sample_mqtt_dm.dir/all' 
failed
make[1]: *** 
[iothub_client/samples/iothub_client_sample_mqtt_dm/CMakeFiles/iothub_client_sample_mqtt_dm.dir/all] 
Error 2
make[1]: *** Waiting for unfinished jobs....
[ 70%] Building C object 
serializer/samples/simplesample_http/CMakeFiles/simplesample_http.dir/linux/main.c.o
[ 70%] Building C object 
uamqp/CMakeFiles/uamqp.dir/src/socket_listener_berkeley.c.o
[ 71%] Linking C static library libuamqp.a
[ 71%] Built target uamqp
[ 72%] Linking C executable simplesample_http
[ 72%] Built target simplesample_http
Makefile:94: recipe for target 'all' failed
make: *** [all] Error 2
>
>> Now the actual problem:
>> When I run the application on the Yocto system, it establishes a tcp
>> connection to the azure server, but then "stops working", until the azure
>> server sends the tcp fin ack, which the the application acknowlegdes. On TCP
>> dump I can see that packets were dropped by the kernel.
>> The tcp problem seems to occur while the azure server is transmitting the
>> certificate, if I interpret the tcpdump output correctly. But might be just
>> coincidence. I checked the openssl libs requested by the application and
>> they are the same on the Ubuntu host and on the Yocto embedded system.
>>
>> The network is also the same as on the host machine.
>>
>> I would be very happy for ideas about what went wrong here.
> Whats the kernel version on working and non working systems. ?
Ubuntu host: 4.4.0-81-generic
Yocto: 4.1.38-dey+gce24590

The dropped packages in tcpdump are a tcpdump problem, as I found out... 
so nothing to do with the actual problem.

The connection is closed very early by the server, as I saw some 
certificate-related strings, it seems to finish right after the 
application received the openssl certs.
I can reproduce the behavior on the host machine by renaming the 
/etc/ssl/certs/ folder, so I'm pretty sure that it's an openssl problem 
(or finding the certs).

When I try to connect with
openssl s_client -showcerts -connect 13.95.15.251:8883
I get the error: Verify return code: 20 (unable to get local issuer 
certificate).
When I try to connect with
openssl s_client -showcerts -connect 13.95.15.251:8883 -CAfile 
/usr/share/ca-certificates/mozilla/Baltimore_CyberTrust_Root.crt
in turn, everything is fine: Verify return code: 0 (ok).

I added the certificate delievered in the azure-iot-c-sdk by Microsoft, 
which is in fact the same as Baltimore_CyberTrust_Root.crt.
I have the certificate in following locations:
/etc/ssl/certs/
/usr/share/ca-certificates/
/usr/local/share/ca-certificates/
/usr/lib/ssl/certs // *see below
and ran update-ca-certificates after each add and rebooted. Nothing 
changed, the application still doesn't connect properly.

Is there maybe another path that I have missed?

* this directory came out when I put this code into the application:

|const char *dir; dir = getenv(X509_get_default_cert_dir_env()); if 
(!dir) dir = X509_get_default_cert_dir(); puts(dir);|


Best Regards,
Jakob

-- 
Jakob Hasse
Software Developement

E: jakob.hasse@smart-home-technology.ch
T: +41 44 552 02 66

Smart Home Technology GmbH
www.smart-home-technology.ch


--------------B225E784F56FB1738550C833
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    Hello Khem,<br>
    <br>
    thanks for the answer. I'm pretty sure now that it is an ssl problem
    (see below).<br>
    <br>
    <div class="moz-cite-prefix">On 26.06.2017 16:28, Khem Raj wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAMKF1srxWL4BOwy8_j05hf2UTSM8Z764jD--X37S36pAGg65bA@mail.gmail.com">
      <pre wrap="">On Sun, Jun 25, 2017 at 11:35 PM, Jakob Hasse
<a class="moz-txt-link-rfc2396E" href="mailto:jakob.hasse@smart-home-technology.ch">&lt;jakob.hasse@smart-home-technology.ch&gt;</a> wrote:
</pre>
      <blockquote type="cite">
        <pre wrap="">Hello,

I'm trying to  run the Mircosoft Azure IoT hub mqtt example
(iothub_client_sample_amqp or simliar) of the C SDK on yocto
(<a class="moz-txt-link-freetext" href="https://github.com/Azure/azure-iot-sdk-c">https://github.com/Azure/azure-iot-sdk-c</a>).
On my Ubuntu host machine, everything compiles and works fine, the
application connects to the azure server and sends messages.
In Yocto, I get errors after compiling the whole SDK with all examples, but
the mqtt example is already there, so I assume it's correct. Furthermore, I
could compile it using Intel's meta-iot-cloud layer and only taking the
example application itself into my own layer.
</pre>
      </blockquote>
      <pre wrap="">
I would suggest to fix all compile errors. If you need support please share
your compile errors here, there might be interesting for people here.</pre>
    </blockquote>
    As I said, the application also compiled with the meta-iot-cloud
    layer without errors. Anyway, here are the errors when compiling
    with the SDK:<br>
    <tt><br>
    </tt><tt>[ 67%] Building C object
iothub_client/samples/iothub_client_sample_mqtt_dm/CMakeFiles/iothub_client_sample_mqtt_dm.dir/iothub_client_sample_mqtt_dm.c.o</tt><tt><br>
    </tt><tt>cc1: error: include location "/usr/include/azureiot" is
      unsafe for cross-compilation [-Werror=poison-system-directories]</tt><tt><br>
    </tt><tt>[ 68%] Building C object
      uamqp/CMakeFiles/uamqp.dir/src/session.c.o</tt><tt><br>
    </tt><tt>[ 69%] Building C object
iothub_client/samples/iothub_client_sample_mqtt_dm/CMakeFiles/iothub_client_sample_mqtt_dm.dir/pi_device/pi.c.o</tt><tt><br>
    </tt><tt>cc1: error: include location "/usr/include/azureiot" is
      unsafe for cross-compilation [-Werror=poison-system-directories]</tt><tt><br>
    </tt><tt>cc1: all warnings being treated as errors</tt><tt><br>
    </tt><tt>iothub_client/samples/iothub_client_sample_mqtt_dm/CMakeFiles/iothub_client_sample_mqtt_dm.dir/build.make:86:
      recipe for target
'iothub_client/samples/iothub_client_sample_mqtt_dm/CMakeFiles/iothub_client_sample_mqtt_dm.dir/pi_device/pi.c.o'
      failed</tt><tt><br>
    </tt><tt>make[2]: ***
[iothub_client/samples/iothub_client_sample_mqtt_dm/CMakeFiles/iothub_client_sample_mqtt_dm.dir/pi_device/pi.c.o]
      Error 1</tt><tt><br>
    </tt><tt>make[2]: *** Waiting for unfinished jobs....</tt><tt><br>
    </tt><tt>Scanning dependencies of target simplesample_http</tt><tt><br>
    </tt><tt>[ 70%] Building C object
serializer/samples/simplesample_http/CMakeFiles/simplesample_http.dir/simplesample_http.c.o</tt><tt><br>
    </tt><tt>cc1: all warnings being treated as errors</tt><tt><br>
    </tt><tt>iothub_client/samples/iothub_client_sample_mqtt_dm/CMakeFiles/iothub_client_sample_mqtt_dm.dir/build.make:62:
      recipe for target
'iothub_client/samples/iothub_client_sample_mqtt_dm/CMakeFiles/iothub_client_sample_mqtt_dm.dir/iothub_client_sample_mqtt_dm.c.o'
      failed</tt><tt><br>
    </tt><tt>make[2]: ***
[iothub_client/samples/iothub_client_sample_mqtt_dm/CMakeFiles/iothub_client_sample_mqtt_dm.dir/iothub_client_sample_mqtt_dm.c.o]
      Error 1</tt><tt><br>
    </tt><tt>CMakeFiles/Makefile2:2288: recipe for target
'iothub_client/samples/iothub_client_sample_mqtt_dm/CMakeFiles/iothub_client_sample_mqtt_dm.dir/all'
      failed</tt><tt><br>
    </tt><tt>make[1]: ***
[iothub_client/samples/iothub_client_sample_mqtt_dm/CMakeFiles/iothub_client_sample_mqtt_dm.dir/all]
      Error 2</tt><tt><br>
    </tt><tt>make[1]: *** Waiting for unfinished jobs....</tt><tt><br>
    </tt><tt>[ 70%] Building C object
serializer/samples/simplesample_http/CMakeFiles/simplesample_http.dir/linux/main.c.o</tt><tt><br>
    </tt><tt>[ 70%] Building C object
      uamqp/CMakeFiles/uamqp.dir/src/socket_listener_berkeley.c.o</tt><tt><br>
    </tt><tt>[ 71%] Linking C static library libuamqp.a</tt><tt><br>
    </tt><tt>[ 71%] Built target uamqp</tt><tt><br>
    </tt><tt>[ 72%] Linking C executable simplesample_http</tt><tt><br>
    </tt><tt>[ 72%] Built target simplesample_http</tt><tt><br>
    </tt><tt>Makefile:94: recipe for target 'all' failed</tt><tt><br>
    </tt><tt>make: *** [all] Error 2</tt><br>
    <blockquote type="cite"
cite="mid:CAMKF1srxWL4BOwy8_j05hf2UTSM8Z764jD--X37S36pAGg65bA@mail.gmail.com">
      <pre wrap="">

</pre>
      <blockquote type="cite">
        <pre wrap="">
Now the actual problem:
When I run the application on the Yocto system, it establishes a tcp
connection to the azure server, but then "stops working", until the azure
server sends the tcp fin ack, which the the application acknowlegdes. On TCP
dump I can see that packets were dropped by the kernel.
The tcp problem seems to occur while the azure server is transmitting the
certificate, if I interpret the tcpdump output correctly. But might be just
coincidence. I checked the openssl libs requested by the application and
they are the same on the Ubuntu host and on the Yocto embedded system.

The network is also the same as on the host machine.

I would be very happy for ideas about what went wrong here.
</pre>
      </blockquote>
      <pre wrap="">
Whats the kernel version on working and non working systems. ?</pre>
    </blockquote>
    Ubuntu host: 4.4.0-81-generic<br>
    Yocto: 4.1.38-dey+gce24590<br>
    <br>
    The dropped packages in tcpdump are a tcpdump problem, as I found
    out... so nothing to do with the actual problem.<br>
    <br>
    The connection is closed very early by the server, as I saw some
    certificate-related strings, it seems to finish right after the
    application received the openssl certs.<br>
    I can reproduce the behavior on the host machine by renaming the
    /etc/ssl/certs/ folder, so I'm pretty sure that it's an openssl
    problem (or finding the certs).<br>
    <br>
    When I try to connect with <br>
    <tt>openssl s_client -showcerts -connect 13.95.15.251:8883<br>
    </tt>I get the error:  <tt>Verify return code: 20 (unable to get
      local issuer certificate)</tt>.<br>
    When I try to connect with <br>
    <tt>openssl s_client -showcerts -connect 13.95.15.251:8883 -CAfile
      /usr/share/ca-certificates/mozilla/Baltimore_CyberTrust_Root.crt</tt><br>
    in turn, everything is fine: <tt>Verify return code: 0 (ok).</tt><br>
    <br>
    I added the certificate delievered in the azure-iot-c-sdk by
    Microsoft, which is in fact the same as <tt> </tt><tt>Baltimore_CyberTrust_Root.crt.<br>
    </tt>I have the certificate in following locations:<br>
    <tt>/etc/ssl/certs/</tt><tt><br>
    </tt><tt>/usr/share/ca-certificates/</tt><tt><br>
    </tt><tt>/usr/local/share/ca-certificates/<br>
      /usr/lib/ssl/certs // *see below<br>
    </tt>and ran update-ca-certificates after each add and rebooted.
    Nothing changed, the application still doesn't connect properly.<br>
    <br>
    Is there maybe another path that I have missed?<br>
    <br>
    * this directory came out when I put this code into the application:<br>
    <pre><code>const char *dir;
dir = getenv(X509_get_default_cert_dir_env());
if (!dir)
    dir = X509_get_default_cert_dir();
puts(dir);</code></pre>
    <br>
    Best Regards,<br>
    Jakob<br>
    <br>
    <pre class="moz-signature" cols="72">-- 
Jakob Hasse
Software Developement

E: <a class="moz-txt-link-abbreviated" href="mailto:jakob.hasse@smart-home-technology.ch">jakob.hasse@smart-home-technology.ch</a>
T: +41 44 552 02 66 

Smart Home Technology GmbH
<a class="moz-txt-link-abbreviated" href="http://www.smart-home-technology.ch">www.smart-home-technology.ch</a></pre>
  </body>
</html>

--------------B225E784F56FB1738550C833--
