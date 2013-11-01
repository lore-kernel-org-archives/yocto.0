Return-Path: <soniaverma9727@gmail.com>
Received: from mail-wg0-f51.google.com (mail-wg0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7176E017D5
	for <yocto@yoctoproject.org>; Thu, 31 Oct 2013 22:16:01 -0700 (PDT)
Received: by mail-wg0-f51.google.com with SMTP id l18so3548288wgh.18
	for <yocto@yoctoproject.org>; Thu, 31 Oct 2013 22:15:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=FXvwcYaNAkk92OvJoD4AyYydBgXt7g7CcZhvZ9XHZ4s=;
	b=aML56u1Gc8sctBAeKVs6wYujhZ0t8H1+9WtFPSWsXB7R+uIcH8ybM1S47+S3LtCV0n
	zt2DXi7vnl4slR8vq8EZyujfUwy6V+CmQ6H7nCU3WQjgQM066oUYV2qFUXExPUIZLmga
	eUPiytq0K2vxYEKGjN06Efyowra+dLHtpGgL8ikK9RzUlKS09fb5H+uSziuuBmLwXld5
	M8AEjJJEokTAfJc8Lip5iz7cZ9Rn1FGBAN2Pb+ZECvOTYBLetAbIrjmb4B0m4/7njZNr
	lXGOilYiVnuULlNXnohraJ6Kt24DbwU+9UZHvj312wgCmkCxPRE5Wzm/hN+J1VqxyRa0
	Ofyg==
MIME-Version: 1.0
X-Received: by 10.180.90.116 with SMTP id bv20mr880249wib.50.1383282959514;
	Thu, 31 Oct 2013 22:15:59 -0700 (PDT)
Received: by 10.194.9.193 with HTTP; Thu, 31 Oct 2013 22:15:59 -0700 (PDT)
In-Reply-To: <CAMKF1srk3LG9V0atq+nYbvt8UipU9UUzrhN4mk64h26g0KrXbA@mail.gmail.com>
References: <CAJ7Vayh_TRCh8fCzafG9vbkD8Wu9rF_a0A-L=bV39tA2hv_8-w@mail.gmail.com>
	<CAMKF1sqkCKjY=hmOgNw9ezs3EuCXtenv+OVY1xP1FWKV_chq5A@mail.gmail.com>
	<CAJ7VayhABvPqSXi-KTFUG58GB9hCDL9mHNoLfX_RxO5JQxMkPQ@mail.gmail.com>
	<CAMKF1srk3LG9V0atq+nYbvt8UipU9UUzrhN4mk64h26g0KrXbA@mail.gmail.com>
Date: Fri, 1 Nov 2013 10:45:59 +0530
Message-ID: <CAJ7VayigC9D7wa-zRWyJV=Tca7zsZ_RQPiBNgRF6Zq2yTnxTQg@mail.gmail.com>
From: sonia verma <soniaverma9727@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: enable Shark support in JAVA
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
X-List-Received-Date: Fri, 01 Nov 2013 05:16:02 -0000
Content-Type: multipart/alternative; boundary=f46d043c7f4e6d07f604ea16a94f

--f46d043c7f4e6d07f604ea16a94f
Content-Type: text/plain; charset=ISO-8859-1

Hi khem

i am not able to find the link from where i can download "IBM's proprietary
JRE J9 for ppc" can you please provide me the link.

-----
Regards
Sonia Verma


On Thu, Oct 31, 2013 at 10:35 PM, Khem Raj <raj.khem@gmail.com> wrote:

> On Thu, Oct 31, 2013 at 9:56 AM, sonia verma <soniaverma9727@gmail.com>
> wrote:
> > Hi Khem
> >
> > Actually I'm runninng JAVA based Opendaylight controller on powerpc
> > architecture with zero ineterpreter mode and it takes about 10 min to
> start.
> >
>
> yes. I dont think there are much possibilities there. You can try
> IBM's proprietary JRE J9 for ppc and see
> if that works on FSL machine. That should get you performance
>
> > On the another hand when I run it on x-86 machine,in hardly takes few
> > seconds to start.
>
> yes. because for x86 you are able to use hotspot JVM
>
> >
> > Board supporting java:
> > java version "1.7.0_25"
> > OpenJDK Runtime Environment (IcedTea 2.3.12) (25b30-2.3.12)
> > OpenJDK Zero VM (build 23.7-b01, interpreted mode)
> >
> > Java -version at x-86 is as follows..
> > java -version
> > java version "1.7.0_25"
> > OpenJDK Runtime Environment (IcedTea 2.3.10)
> (7u25-2.3.10-1ubuntu0.12.04.2)
> > OpenJDK Server VM (build 23.7-b01, mixed mode)
> >
> > 2013-10-31 01:00:03.508 UTC [Start Level Event Dispatcher] INFO
> > o.o.c.s.binding.impl.BrokerActivator - Binding Aware Broker initialized
> > osgi> 2013-10-31 01:00:04.374 UTC [Start Level Event Dispatcher] INFO
> > o.o.c.c.s.internal.
> > ClusterManager - I'm a GossipRouter will listen on 1
> > 2013-10-31 01:00:04.611 UTC [Start Level Event Dispatcher] INFO
> > o.o.c.c.s.internal.ClusterManager - Started GossipRouter
> > GossipRouter started at Thu Oct 31 01:00:04 UTC 2013
> > Listening on port 12001 bound on address 0.0.0.0/0.0.0.0
> > Backlog is 1000, linger timeout is 2000, and read timeout is 0
> > 2013-10-31 01:00:04.612 UTC [Start Level Event Dispatcher] INFO
> > o.o.c.c.s.internal.ClusterManager - Starting the ClusterManager
> > 2013-10-31 01:00:13.639 UTC [Start Level Event Dispatcher] INFO
> > o.o.c.c.i.ConfigurationService - ConfigurationService Manager init
> > 2013-10-31 01:00:15.782 UTC [Start Level Event Dispatcher] INFO
> > o.o.c.n.i.osgi.NetconfImplActivator - Starting TCP netconf server at
> > /127.0.3
> > Oct 31, 2013 1:00:17 AM org.apache.catalina.core.AprLifecycleListener
> init
> > INFO: The APR based Apache Tomcat Native library which allows optimal
> > performance in production environments was not found on the java.librarb
> > Oct 31, 2013 1:00:22 AM org.apache.coyote.AbstractProtocol init
> > INFO: Initializing ProtocolHandler ["http-bio-8080"]
> > Oct 31, 2013 1:00:23 AM
> > org.apache.catalina.mbeans.GlobalResourcesLifecycleListener createMBeans
> > SEVERE: No global naming context defined for server
> > Oct 31, 2013 1:00:23 AM org.apache.catalina.core.StandardService
> > startInternal
> > INFO: Starting service Catalina
> > Oct 31, 2013 1:00:23 AM org.apache.catalina.core.StandardEngine
> > startInternal
> > INFO: Starting Servlet Engine: Apache Tomcat/7.0.32
> > Oct 31, 2013 1:00:23 AM org.apache.coyote.AbstractProtocol start
> > INFO: Starting ProtocolHandler ["http-bio-8080"]
> > 2013-10-31 01:01:46.580 UTC [ConfigPersister-registrator] INFO
> > o.o.c.n.p.i.ConfigPersisterNotificationHandler - Session id received from
> > net1
> > 2013-10-31 01:01:46.587 UTC [ConfigPersister-registrator] INFO
> > o.o.c.n.p.i.ConfigPersisterNotificationHandler - No last config provided
> by
> > b]
> > Oct 31, 2013 1:02:08 AM org.apache.catalina.core.ApplicationContext log
> > INFO: No Spring WebApplicationInitializer types detected on classpath
> > Oct 31, 2013 1:02:09 AM org.apache.catalina.core.ApplicationContext log
> > INFO: Initializing Spring FrameworkServlet 'Flows'
> > Oct 31, 2013 1:02:35 AM
> > com.sun.jersey.server.impl.application.WebApplicationImpl _initiate
> > INFO: Initiating Jersey application, version 'Jersey: 1.17 01/17/2013
> 03:31
> > PM'
> > Oct 31, 2013 1:02:35 AM
> >
> com.sun.jersey.server.impl.application.DeferredResourceConfig$ApplicationHolder
> > <init>
> > INFO: Instantiated the Application class
> > org.opendaylight.controller.northbound.commons.NorthboundApplication
> > Oct 31, 2013 1:02:52 AM
> > com.sun.jersey.server.impl.application.WebApplicationImpl _initiate
> > INFO: Initiating Jersey application, version 'Jersey: 1.17 01/17/2013
> 03:31
> > PM'
> > Oct 31, 2013 1:02:52 AM
> >
> com.sun.jersey.server.impl.application.DeferredResourceConfig$ApplicationHolder
> > <init>
> > INFO: Instantiated the Application class
> > org.opendaylight.controller.northbound.commons.NorthboundApplication
> > Oct 31, 2013 1:03:22 AM org.apache.catalina.core.ApplicationContext log
> > INFO: No Spring WebApplicationInitializer types detected on classpath
> > Oct 31, 2013 1:03:23 AM org.apache.catalina.core.ApplicationContext log
> > INFO: Initializing Spring FrameworkServlet 'RootGUI'
> > Oct 31, 2013 1:03:44 AM org.apache.catalina.core.ApplicationContext log
> > INFO: No Spring WebApplicationInitializer types detected on classpath
> > Oct 31, 2013 1:03:44 AM org.apache.catalina.core.ApplicationContext log
> > INFO: Initializing Spring FrameworkServlet 'Devices'
> > Oct 31, 2013 1:04:01 AM
> > com.sun.jersey.server.impl.application.WebApplicationImpl _initiate
> > INFO: Initiating Jersey application, version 'Jersey: 1.17 01/17/2013
> 03:31
> > PM'
> > Oct 31, 2013 1:04:01 AM
> >
> com.sun.jersey.server.impl.application.DeferredResourceConfig$ApplicationHolder
> > <init>
> > INFO: Instantiated the Application class
> > org.opendaylight.controller.northbound.commons.NorthboundApplication
> > Oct 31, 2013 1:04:17 AM
> > com.sun.jersey.server.impl.application.WebApplicationImpl _initiate
> > INFO: Initiating Jersey application, version 'Jersey: 1.17 01/17/2013
> 03:31
> > PM'
> > Oct 31, 2013 1:04:17 AM
> >
> com.sun.jersey.server.impl.application.DeferredResourceConfig$ApplicationHolder
> > <init>
> > INFO: Instantiated the Application class
> > org.opendaylight.controller.northbound.commons.NorthboundApplication
> > Oct 31, 2013 1:04:38 AM org.apache.catalina.core.ApplicationContext log
> > INFO: No Spring WebApplicationInitializer types detected on classpath
> > Oct 31, 2013 1:04:38 AM org.apache.catalina.core.ApplicationContext log
> > INFO: Initializing Spring FrameworkServlet 'Troubleshoot'
> > Oct 31, 2013 1:04:48 AM
> > com.sun.jersey.server.impl.application.WebApplicationImpl _initiate
> > INFO: Initiating Jersey application, version 'Jersey: 1.17 01/17/2013
> 03:31
> > PM'
> > Oct 31, 2013 1:04:48 AM
> >
> com.sun.jersey.server.impl.application.DeferredResourceConfig$ApplicationHolder
> > <init>
> > INFO: Instantiated the Application class
> >
> org.opendaylight.controller.networkconfig.neutron.northbound.NeutronNorthboundRSApplication
> > Oct 31, 2013 1:05:05 AM
> > com.sun.jersey.server.impl.application.WebApplicationImpl _initiate
> > INFO: Initiating Jersey application, version 'Jersey: 1.17 01/17/2013
> 03:31
> > PM'
> > Oct 31, 2013 1:05:05 AM
> >
> com.sun.jersey.server.impl.application.DeferredResourceConfig$ApplicationHolder
> > <init>
> > INFO: Instantiated the Application class
> > org.opendaylight.controller.northbound.commons.NorthboundApplication
> > Oct 31, 2013 1:05:21 AM
> > com.sun.jersey.server.impl.application.WebApplicationImpl _initiate
> > INFO: Initiating Jersey application, version 'Jersey: 1.17 01/17/2013
> 03:31
> > PM'
> > Oct 31, 2013 1:05:21 AM
> >
> com.sun.jersey.server.impl.application.DeferredResourceConfig$ApplicationHolder
> > <init>
> > INFO: Instantiated the Application class
> > org.opendaylight.controller.northbound.commons.NorthboundApplication
> > Oct 31, 2013 1:05:45 AM org.apache.catalina.core.ApplicationContext log
> > INFO: No Spring WebApplicationInitializer types detected on classpath
> > Oct 31, 2013 1:05:45 AM org.apache.catalina.core.ApplicationContext log
> > INFO: Initializing Spring FrameworkServlet 'Topology'
> > 2013-10-31 01:05:48.392 UTC [Start Level Event Dispatcher] INFO
> > o.o.c.s.t.provider.ToasterProvider - Provider Session initialized
> > Oct 31, 2013 1:06:03 AM
> > com.sun.jersey.server.impl.application.WebApplicationImpl _initiate
> > INFO: Initiating Jersey application, version 'Jersey: 1.17 01/17/2013
> 03:31
> > PM'
> > Oct 31, 2013 1:06:03 AM
> >
> com.sun.jersey.server.impl.application.DeferredResourceConfig$ApplicationHolder
> > <init>
> > INFO: Instantiated the Application class
> > org.opendaylight.controller.northbound.commons.NorthboundApplication
> > 2013-10-31 01:06:06.154 UTC [ControllerI/O Thread] INFO
> > o.o.c.p.o.core.internal.ControllerIO - Controller is now listening on
> > any:6633
> > 2013-10-31 01:06:07.050 UTC [ControllerI/O Thread] INFO
> > o.o.c.p.o.core.internal.Controller - Switch:192.168.6.123:56750 is
> connected
> > to the r
> > Oct 31, 2013 1:06:07 AM
> > com.sun.jersey.server.impl.application.WebApplicationImpl _initiate
> > INFO: Initiating Jersey application, version 'Jersey: 1.17 01/17/2013
> 03:31
> > PM'
> > Oct 31, 2013 1:06:07 AM
> >
> com.sun.jersey.server.impl.application.DeferredResourceConfig$ApplicationHolder
> > <init>
> > INFO: Instantiated the Application class
> >
> org.opendaylight.controller.containermanager.northbound.ContainerManagerNorthboundRSApplication
> > 2013-10-31 01:06:10.563 UTC [ControllerI/O Thread] INFO
> > o.o.c.p.o.core.internal.Controller - Switch:192.168.6.137:52815 is
> connected
> > to the r
> > 2013-10-31 01:06:12.369 UTC [pool-13-thread-1] INFO
> > o.o.c.f.i.ForwardingRulesManager - Forwarding mode for node
> > OF|00:00:00:04:9f:02:a3:e3 se
> > 2013-10-31 01:06:12.371 UTC [pool-13-thread-1] WARN
> > o.o.c.f.i.ForwardingRulesManager - Failed to remove Proactive Static
> flow:
> > __Punt ARP__
> > 2013-10-31 01:06:12.372 UTC [pool-13-thread-1] WARN
> > o.o.c.f.i.ForwardingRulesManager - Failed to remove Proactive Static
> flow:
> > __Punt LLDP__
> > 2013-10-31 01:06:12.373 UTC [pool-13-thread-1] WARN
> > o.o.c.f.i.ForwardingRulesManager - Failed to remove Proactive Static
> flow:
> > __Catch-All D_
> > 2013-10-31 01:06:12.753 UTC [fileinstall-./plugins] INFO
> > o.o.c.s.l.i.LoadBalancerService - Running container name:default
> > 2013-10-31 01:06:12.756 UTC [fileinstall-./plugins] INFO
> > o.o.c.s.l.i.LoadBalancerService - ConfigManager [vips={}, pools={}]
> > Oct 31, 2013 1:06:20 AM
> > com.sun.jersey.server.impl.application.WebApplicationImpl _initiate
> > INFO: Initiating Jersey application, version 'Jersey: 1.17 01/17/2013
> 03:31
> > PM'
> > Oct 31, 2013 1:06:20 AM
> >
> com.sun.jersey.server.impl.application.DeferredResourceConfig$ApplicationHolder
> > <init>
> > INFO: Instantiated the Application class
> > org.opendaylight.controller.northbound.commons.NorthboundApplication
> > Oct 31, 2013 1:06:27 AM
> > com.sun.jersey.server.impl.application.WebApplicationImpl _initiate
> > INFO: Initiating Jersey application, version 'Jersey: 1.17 01/17/2013
> 03:31
> > PM'
> > Oct 31, 2013 1:06:27 AM
> >
> com.sun.jersey.server.impl.application.DeferredResourceConfig$ApplicationHolder
> > <init>
> > INFO: Instantiated the Application class
> > org.opendaylight.controller.northbound.commons.NorthboundApplication.
> >
> > I have read that enabling shark would speed up the process. Please help
> in
> > tackling the above issue
> >
> >
> > Thanks
> >
> >
> >
> >
> > On Thu, Oct 31, 2013 at 9:56 PM, Khem Raj <raj.khem@gmail.com> wrote:
> >>
> >> On Thu, Oct 31, 2013 at 8:08 AM, sonia verma <soniaverma9727@gmail.com>
> >> wrote:
> >> > Hi ALL,
> >> >
> >> > I have integrated Java in one of the board having Powerpc architecture
> >> > using
> >> > meta-java. By default it cam with Zero port support which only works
> in
> >> > interpreter mode.
> >> >
> >> > I need to enable Shark support in that. Can any one please help me
> with
> >> > the
> >> > procedure to compile JAVA with Shark support.
> >>
> >> zero is the best option you have. Shark wont work on ppc.
> >>
> >> >
> >> > --
> >> > Regards
> >> >
> >> > Sonia Verma
> >> >
> >> >
> >> > _______________________________________________
> >> > yocto mailing list
> >> > yocto@yoctoproject.org
> >> > https://lists.yoctoproject.org/listinfo/yocto
> >> >
> >
> >
>

--f46d043c7f4e6d07f604ea16a94f
Content-Type: text/html; charset=ISO-8859-1

<div dir="ltr"><div><div><div>Hi khem <br><br></div>i am not able to find the link from where i can download &quot;IBM&#39;s proprietary JRE J9 for ppc&quot; can you please provide me the link.<br><br>-----<br></div>Regards<br>
</div>Sonia Verma<br></div><div class="gmail_extra"><br><br><div class="gmail_quote">On Thu, Oct 31, 2013 at 10:35 PM, Khem Raj <span dir="ltr">&lt;<a href="mailto:raj.khem@gmail.com" target="_blank">raj.khem@gmail.com</a>&gt;</span> wrote:<br>
<blockquote class="gmail_quote" style="margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div class="im">On Thu, Oct 31, 2013 at 9:56 AM, sonia verma &lt;<a href="mailto:soniaverma9727@gmail.com">soniaverma9727@gmail.com</a>&gt; wrote:<br>

&gt; Hi Khem<br>
&gt;<br>
&gt; Actually I&#39;m runninng JAVA based Opendaylight controller on powerpc<br>
&gt; architecture with zero ineterpreter mode and it takes about 10 min to start.<br>
&gt;<br>
<br>
</div>yes. I dont think there are much possibilities there. You can try<br>
IBM&#39;s proprietary JRE J9 for ppc and see<br>
if that works on FSL machine. That should get you performance<br>
<div class="im"><br>
&gt; On the another hand when I run it on x-86 machine,in hardly takes few<br>
&gt; seconds to start.<br>
<br>
</div>yes. because for x86 you are able to use hotspot JVM<br>
<div class="HOEnZb"><div class="h5"><br>
&gt;<br>
&gt; Board supporting java:<br>
&gt; java version &quot;1.7.0_25&quot;<br>
&gt; OpenJDK Runtime Environment (IcedTea 2.3.12) (25b30-2.3.12)<br>
&gt; OpenJDK Zero VM (build 23.7-b01, interpreted mode)<br>
&gt;<br>
&gt; Java -version at x-86 is as follows..<br>
&gt; java -version<br>
&gt; java version &quot;1.7.0_25&quot;<br>
&gt; OpenJDK Runtime Environment (IcedTea 2.3.10) (7u25-2.3.10-1ubuntu0.12.04.2)<br>
&gt; OpenJDK Server VM (build 23.7-b01, mixed mode)<br>
&gt;<br>
&gt; 2013-10-31 01:00:03.508 UTC [Start Level Event Dispatcher] INFO<br>
&gt; o.o.c.s.binding.impl.BrokerActivator - Binding Aware Broker initialized<br>
&gt; osgi&gt; 2013-10-31 01:00:04.374 UTC [Start Level Event Dispatcher] INFO<br>
&gt; o.o.c.c.s.internal.<br>
&gt; ClusterManager - I&#39;m a GossipRouter will listen on 1<br>
&gt; 2013-10-31 01:00:04.611 UTC [Start Level Event Dispatcher] INFO<br>
&gt; o.o.c.c.s.internal.ClusterManager - Started GossipRouter<br>
&gt; GossipRouter started at Thu Oct 31 01:00:04 UTC 2013<br>
&gt; Listening on port 12001 bound on address <a href="http://0.0.0.0/0.0.0.0" target="_blank">0.0.0.0/0.0.0.0</a><br>
&gt; Backlog is 1000, linger timeout is 2000, and read timeout is 0<br>
&gt; 2013-10-31 01:00:04.612 UTC [Start Level Event Dispatcher] INFO<br>
&gt; o.o.c.c.s.internal.ClusterManager - Starting the ClusterManager<br>
&gt; 2013-10-31 01:00:13.639 UTC [Start Level Event Dispatcher] INFO<br>
&gt; o.o.c.c.i.ConfigurationService - ConfigurationService Manager init<br>
&gt; 2013-10-31 01:00:15.782 UTC [Start Level Event Dispatcher] INFO<br>
&gt; o.o.c.n.i.osgi.NetconfImplActivator - Starting TCP netconf server at<br>
&gt; /127.0.3<br>
&gt; Oct 31, 2013 1:00:17 AM org.apache.catalina.core.AprLifecycleListener init<br>
&gt; INFO: The APR based Apache Tomcat Native library which allows optimal<br>
&gt; performance in production environments was not found on the java.librarb<br>
&gt; Oct 31, 2013 1:00:22 AM org.apache.coyote.AbstractProtocol init<br>
&gt; INFO: Initializing ProtocolHandler [&quot;http-bio-8080&quot;]<br>
&gt; Oct 31, 2013 1:00:23 AM<br>
&gt; org.apache.catalina.mbeans.GlobalResourcesLifecycleListener createMBeans<br>
&gt; SEVERE: No global naming context defined for server<br>
&gt; Oct 31, 2013 1:00:23 AM org.apache.catalina.core.StandardService<br>
&gt; startInternal<br>
&gt; INFO: Starting service Catalina<br>
&gt; Oct 31, 2013 1:00:23 AM org.apache.catalina.core.StandardEngine<br>
&gt; startInternal<br>
&gt; INFO: Starting Servlet Engine: Apache Tomcat/7.0.32<br>
&gt; Oct 31, 2013 1:00:23 AM org.apache.coyote.AbstractProtocol start<br>
&gt; INFO: Starting ProtocolHandler [&quot;http-bio-8080&quot;]<br>
&gt; 2013-10-31 01:01:46.580 UTC [ConfigPersister-registrator] INFO<br>
&gt; o.o.c.n.p.i.ConfigPersisterNotificationHandler - Session id received from<br>
&gt; net1<br>
&gt; 2013-10-31 01:01:46.587 UTC [ConfigPersister-registrator] INFO<br>
&gt; o.o.c.n.p.i.ConfigPersisterNotificationHandler - No last config provided by<br>
&gt; b]<br>
&gt; Oct 31, 2013 1:02:08 AM org.apache.catalina.core.ApplicationContext log<br>
&gt; INFO: No Spring WebApplicationInitializer types detected on classpath<br>
&gt; Oct 31, 2013 1:02:09 AM org.apache.catalina.core.ApplicationContext log<br>
&gt; INFO: Initializing Spring FrameworkServlet &#39;Flows&#39;<br>
&gt; Oct 31, 2013 1:02:35 AM<br>
&gt; com.sun.jersey.server.impl.application.WebApplicationImpl _initiate<br>
&gt; INFO: Initiating Jersey application, version &#39;Jersey: 1.17 01/17/2013 03:31<br>
&gt; PM&#39;<br>
&gt; Oct 31, 2013 1:02:35 AM<br>
&gt; com.sun.jersey.server.impl.application.DeferredResourceConfig$ApplicationHolder<br>
&gt; &lt;init&gt;<br>
&gt; INFO: Instantiated the Application class<br>
&gt; org.opendaylight.controller.northbound.commons.NorthboundApplication<br>
&gt; Oct 31, 2013 1:02:52 AM<br>
&gt; com.sun.jersey.server.impl.application.WebApplicationImpl _initiate<br>
&gt; INFO: Initiating Jersey application, version &#39;Jersey: 1.17 01/17/2013 03:31<br>
&gt; PM&#39;<br>
&gt; Oct 31, 2013 1:02:52 AM<br>
&gt; com.sun.jersey.server.impl.application.DeferredResourceConfig$ApplicationHolder<br>
&gt; &lt;init&gt;<br>
&gt; INFO: Instantiated the Application class<br>
&gt; org.opendaylight.controller.northbound.commons.NorthboundApplication<br>
&gt; Oct 31, 2013 1:03:22 AM org.apache.catalina.core.ApplicationContext log<br>
&gt; INFO: No Spring WebApplicationInitializer types detected on classpath<br>
&gt; Oct 31, 2013 1:03:23 AM org.apache.catalina.core.ApplicationContext log<br>
&gt; INFO: Initializing Spring FrameworkServlet &#39;RootGUI&#39;<br>
&gt; Oct 31, 2013 1:03:44 AM org.apache.catalina.core.ApplicationContext log<br>
&gt; INFO: No Spring WebApplicationInitializer types detected on classpath<br>
&gt; Oct 31, 2013 1:03:44 AM org.apache.catalina.core.ApplicationContext log<br>
&gt; INFO: Initializing Spring FrameworkServlet &#39;Devices&#39;<br>
&gt; Oct 31, 2013 1:04:01 AM<br>
&gt; com.sun.jersey.server.impl.application.WebApplicationImpl _initiate<br>
&gt; INFO: Initiating Jersey application, version &#39;Jersey: 1.17 01/17/2013 03:31<br>
&gt; PM&#39;<br>
&gt; Oct 31, 2013 1:04:01 AM<br>
&gt; com.sun.jersey.server.impl.application.DeferredResourceConfig$ApplicationHolder<br>
&gt; &lt;init&gt;<br>
&gt; INFO: Instantiated the Application class<br>
&gt; org.opendaylight.controller.northbound.commons.NorthboundApplication<br>
&gt; Oct 31, 2013 1:04:17 AM<br>
&gt; com.sun.jersey.server.impl.application.WebApplicationImpl _initiate<br>
&gt; INFO: Initiating Jersey application, version &#39;Jersey: 1.17 01/17/2013 03:31<br>
&gt; PM&#39;<br>
&gt; Oct 31, 2013 1:04:17 AM<br>
&gt; com.sun.jersey.server.impl.application.DeferredResourceConfig$ApplicationHolder<br>
&gt; &lt;init&gt;<br>
&gt; INFO: Instantiated the Application class<br>
&gt; org.opendaylight.controller.northbound.commons.NorthboundApplication<br>
&gt; Oct 31, 2013 1:04:38 AM org.apache.catalina.core.ApplicationContext log<br>
&gt; INFO: No Spring WebApplicationInitializer types detected on classpath<br>
&gt; Oct 31, 2013 1:04:38 AM org.apache.catalina.core.ApplicationContext log<br>
&gt; INFO: Initializing Spring FrameworkServlet &#39;Troubleshoot&#39;<br>
&gt; Oct 31, 2013 1:04:48 AM<br>
&gt; com.sun.jersey.server.impl.application.WebApplicationImpl _initiate<br>
&gt; INFO: Initiating Jersey application, version &#39;Jersey: 1.17 01/17/2013 03:31<br>
&gt; PM&#39;<br>
&gt; Oct 31, 2013 1:04:48 AM<br>
&gt; com.sun.jersey.server.impl.application.DeferredResourceConfig$ApplicationHolder<br>
&gt; &lt;init&gt;<br>
&gt; INFO: Instantiated the Application class<br>
&gt; org.opendaylight.controller.networkconfig.neutron.northbound.NeutronNorthboundRSApplication<br>
&gt; Oct 31, 2013 1:05:05 AM<br>
&gt; com.sun.jersey.server.impl.application.WebApplicationImpl _initiate<br>
&gt; INFO: Initiating Jersey application, version &#39;Jersey: 1.17 01/17/2013 03:31<br>
&gt; PM&#39;<br>
&gt; Oct 31, 2013 1:05:05 AM<br>
&gt; com.sun.jersey.server.impl.application.DeferredResourceConfig$ApplicationHolder<br>
&gt; &lt;init&gt;<br>
&gt; INFO: Instantiated the Application class<br>
&gt; org.opendaylight.controller.northbound.commons.NorthboundApplication<br>
&gt; Oct 31, 2013 1:05:21 AM<br>
&gt; com.sun.jersey.server.impl.application.WebApplicationImpl _initiate<br>
&gt; INFO: Initiating Jersey application, version &#39;Jersey: 1.17 01/17/2013 03:31<br>
&gt; PM&#39;<br>
&gt; Oct 31, 2013 1:05:21 AM<br>
&gt; com.sun.jersey.server.impl.application.DeferredResourceConfig$ApplicationHolder<br>
&gt; &lt;init&gt;<br>
&gt; INFO: Instantiated the Application class<br>
&gt; org.opendaylight.controller.northbound.commons.NorthboundApplication<br>
&gt; Oct 31, 2013 1:05:45 AM org.apache.catalina.core.ApplicationContext log<br>
&gt; INFO: No Spring WebApplicationInitializer types detected on classpath<br>
&gt; Oct 31, 2013 1:05:45 AM org.apache.catalina.core.ApplicationContext log<br>
&gt; INFO: Initializing Spring FrameworkServlet &#39;Topology&#39;<br>
&gt; 2013-10-31 01:05:48.392 UTC [Start Level Event Dispatcher] INFO<br>
&gt; o.o.c.s.t.provider.ToasterProvider - Provider Session initialized<br>
&gt; Oct 31, 2013 1:06:03 AM<br>
&gt; com.sun.jersey.server.impl.application.WebApplicationImpl _initiate<br>
&gt; INFO: Initiating Jersey application, version &#39;Jersey: 1.17 01/17/2013 03:31<br>
&gt; PM&#39;<br>
&gt; Oct 31, 2013 1:06:03 AM<br>
&gt; com.sun.jersey.server.impl.application.DeferredResourceConfig$ApplicationHolder<br>
&gt; &lt;init&gt;<br>
&gt; INFO: Instantiated the Application class<br>
&gt; org.opendaylight.controller.northbound.commons.NorthboundApplication<br>
&gt; 2013-10-31 01:06:06.154 UTC [ControllerI/O Thread] INFO<br>
&gt; o.o.c.p.o.core.internal.ControllerIO - Controller is now listening on<br>
&gt; any:6633<br>
&gt; 2013-10-31 01:06:07.050 UTC [ControllerI/O Thread] INFO<br>
&gt; o.o.c.p.o.core.internal.Controller - Switch:<a href="http://192.168.6.123:56750" target="_blank">192.168.6.123:56750</a> is connected<br>
&gt; to the r<br>
&gt; Oct 31, 2013 1:06:07 AM<br>
&gt; com.sun.jersey.server.impl.application.WebApplicationImpl _initiate<br>
&gt; INFO: Initiating Jersey application, version &#39;Jersey: 1.17 01/17/2013 03:31<br>
&gt; PM&#39;<br>
&gt; Oct 31, 2013 1:06:07 AM<br>
&gt; com.sun.jersey.server.impl.application.DeferredResourceConfig$ApplicationHolder<br>
&gt; &lt;init&gt;<br>
&gt; INFO: Instantiated the Application class<br>
&gt; org.opendaylight.controller.containermanager.northbound.ContainerManagerNorthboundRSApplication<br>
&gt; 2013-10-31 01:06:10.563 UTC [ControllerI/O Thread] INFO<br>
&gt; o.o.c.p.o.core.internal.Controller - Switch:<a href="http://192.168.6.137:52815" target="_blank">192.168.6.137:52815</a> is connected<br>
&gt; to the r<br>
&gt; 2013-10-31 01:06:12.369 UTC [pool-13-thread-1] INFO<br>
&gt; o.o.c.f.i.ForwardingRulesManager - Forwarding mode for node<br>
&gt; OF|00:00:00:04:9f:02:a3:e3 se<br>
&gt; 2013-10-31 01:06:12.371 UTC [pool-13-thread-1] WARN<br>
&gt; o.o.c.f.i.ForwardingRulesManager - Failed to remove Proactive Static flow:<br>
&gt; __Punt ARP__<br>
&gt; 2013-10-31 01:06:12.372 UTC [pool-13-thread-1] WARN<br>
&gt; o.o.c.f.i.ForwardingRulesManager - Failed to remove Proactive Static flow:<br>
&gt; __Punt LLDP__<br>
&gt; 2013-10-31 01:06:12.373 UTC [pool-13-thread-1] WARN<br>
&gt; o.o.c.f.i.ForwardingRulesManager - Failed to remove Proactive Static flow:<br>
&gt; __Catch-All D_<br>
&gt; 2013-10-31 01:06:12.753 UTC [fileinstall-./plugins] INFO<br>
&gt; o.o.c.s.l.i.LoadBalancerService - Running container name:default<br>
&gt; 2013-10-31 01:06:12.756 UTC [fileinstall-./plugins] INFO<br>
&gt; o.o.c.s.l.i.LoadBalancerService - ConfigManager [vips={}, pools={}]<br>
&gt; Oct 31, 2013 1:06:20 AM<br>
&gt; com.sun.jersey.server.impl.application.WebApplicationImpl _initiate<br>
&gt; INFO: Initiating Jersey application, version &#39;Jersey: 1.17 01/17/2013 03:31<br>
&gt; PM&#39;<br>
&gt; Oct 31, 2013 1:06:20 AM<br>
&gt; com.sun.jersey.server.impl.application.DeferredResourceConfig$ApplicationHolder<br>
&gt; &lt;init&gt;<br>
&gt; INFO: Instantiated the Application class<br>
&gt; org.opendaylight.controller.northbound.commons.NorthboundApplication<br>
&gt; Oct 31, 2013 1:06:27 AM<br>
&gt; com.sun.jersey.server.impl.application.WebApplicationImpl _initiate<br>
&gt; INFO: Initiating Jersey application, version &#39;Jersey: 1.17 01/17/2013 03:31<br>
&gt; PM&#39;<br>
&gt; Oct 31, 2013 1:06:27 AM<br>
&gt; com.sun.jersey.server.impl.application.DeferredResourceConfig$ApplicationHolder<br>
&gt; &lt;init&gt;<br>
&gt; INFO: Instantiated the Application class<br>
&gt; org.opendaylight.controller.northbound.commons.NorthboundApplication.<br>
&gt;<br>
&gt; I have read that enabling shark would speed up the process. Please help in<br>
&gt; tackling the above issue<br>
&gt;<br>
&gt;<br>
&gt; Thanks<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; On Thu, Oct 31, 2013 at 9:56 PM, Khem Raj &lt;<a href="mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; On Thu, Oct 31, 2013 at 8:08 AM, sonia verma &lt;<a href="mailto:soniaverma9727@gmail.com">soniaverma9727@gmail.com</a>&gt;<br>
&gt;&gt; wrote:<br>
&gt;&gt; &gt; Hi ALL,<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; I have integrated Java in one of the board having Powerpc architecture<br>
&gt;&gt; &gt; using<br>
&gt;&gt; &gt; meta-java. By default it cam with Zero port support which only works in<br>
&gt;&gt; &gt; interpreter mode.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; I need to enable Shark support in that. Can any one please help me with<br>
&gt;&gt; &gt; the<br>
&gt;&gt; &gt; procedure to compile JAVA with Shark support.<br>
&gt;&gt;<br>
&gt;&gt; zero is the best option you have. Shark wont work on ppc.<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; --<br>
&gt;&gt; &gt; Regards<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Sonia Verma<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; _______________________________________________<br>
&gt;&gt; &gt; yocto mailing list<br>
&gt;&gt; &gt; <a href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
&gt;&gt; &gt; <a href="https://lists.yoctoproject.org/listinfo/yocto" target="_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt;&gt; &gt;<br>
&gt;<br>
&gt;<br>
</div></div></blockquote></div><br></div>

--f46d043c7f4e6d07f604ea16a94f--
